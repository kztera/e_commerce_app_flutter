import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/utils/helpers/helper_function.dart';
import 'package:zzz_book_store/utils/helpers/pricing_calculator.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class CartController extends GetxController {
  static CartController get instance => Get.find();
  final MainController mainController = Get.find();
  RxInt totalAmount = 0.obs;
  int tax = 20000;
  RxInt totalPayment = 0.obs;

  void onRemoveToCart(int index) {
    mainController.onRemoveToCart(index);
  }

  void calcTotalPayment() {
    totalAmount.value = PricingCalculator.totalAmount(mainController.carts);
    totalPayment.value = totalAmount.value + tax;
  }

  void onPayment() {
    sendDataToMoMo();
  }

  void sendDataToMoMo() async {
    String requestId = const Uuid().v4();
    String orderId = requestId;
    String ipnUrl = "https://project-server-android.onrender.com/api/user/momo";
    String redirectUrl = "";
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
      launchUrl(uri);
    } else {
      throw 'Can not open app';
    }
  }

  @override
  void onInit() {
    calcTotalPayment();
    ever(mainController.carts, (_) => calcTotalPayment());
    super.onInit();
  }
}
