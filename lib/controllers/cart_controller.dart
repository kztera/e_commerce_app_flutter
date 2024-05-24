import 'package:flutter/cupertino.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/order.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/screens/main/orders/order.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/helpers/pricing_calculator.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';
import 'package:zzz_book_store/utils/validators/validation.dart';
import 'package:zzz_book_store/widgets/shared/general/success_screen.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();
  final MainController mainController = Get.find();
  RxInt totalAmount = 0.obs;
  int tax = 20000;
  RxInt totalPayment = 0.obs;
  late User user;
  final formKey = GlobalKey<FormState>();
  String email = '';

  void onRemoveToCart(int index) {
    mainController.onRemoveToCart(index);
  }

  void setEmail(String email) => this.email = email;

  String? validateEmail(String? email) {
    return TValidator.validateEmail(email);
  }

  void calcTotalPayment() {
    totalAmount.value = PricingCalculator.totalAmount(mainController.carts);
    totalPayment.value = totalAmount.value + tax;
  }

  void onPayment() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    var response = await HttpClient.post(
        endpoint: "orders",
        data: {
          "userId": user.id,
          "email": email,
          "totalPrice": totalPayment.value,
          "cartItems":
              mainController.carts.map((cart) => {"product": cart.id}).toList()
        },
        token: user.accessToken);
    Order order = Order.fromJson(response['order']);

    sendDataToMoMo(order.id);
  }

  void sendDataToMoMo(String id) async {
    String requestId = const Uuid().v4();
    String orderId = id;
    String ipnUrl = dotenv.env['CHECKOUT_URL'].toString();
    String redirectUrl = "zzz_book_store://";
    String orderInfo = 'Thanh toán đơn hàng';
    int amount = totalPayment.value;
    String extraData = '';
    String requestType = 'captureWallet';

    String signature = HelperFunc.generateSignature(
        requestId: requestId,
        amount: amount,
        extraData: extraData,
        orderId: orderId,
        ipnUrl: ipnUrl,
        redirectUrl: redirectUrl,
        orderInfo: orderInfo,
        requestType: requestType);

    var partnerCode = dotenv.env['PARTNER_CODE'].toString();

    var data = {
      "partnerCode": partnerCode,
      "requestId": requestId,
      "amount": amount,
      "orderId": orderId,
      "orderInfo": orderInfo,
      "redirectUrl": redirectUrl,
      "ipnUrl": ipnUrl,
      "requestType": requestType,
      "extraData": extraData,
      "lang": "en",
      "signature": signature,
    };

    var response = await HttpClient.postMoMo(
        endpoint: '/v2/gateway/api/create', data: data);
    openMoMo(response['deeplink']);
  }

  Future<void> openMoMo(String deepLink) async {
    Uri uri = Uri.parse(deepLink);
    if (await canLaunchUrl(uri)) {
      bool launched = await launchUrl(uri);
      if (launched) {
        mainController.carts.clear();
        await Get.offAll(() => SuccessScreen(
              title: "Thành công",
              subTitle: "Thanh toán thành công",
              onContinue: () => Get.to(() => const OrderScreen()),
            ));
      } else {
        throw 'Can not open app';
      }
    }
  }

  @override
  void onInit() {
    user = mainController.user;
    calcTotalPayment();
    ever(mainController.carts, (_) => calcTotalPayment());
    super.onInit();
  }
}
