import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/order_item.dart';
import 'package:zzz_book_store/model/user.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class ReviewController extends GetxController {
  static ReviewController get instance => Get.find();
  final MainController _mainController = MainController.instance;

  RxInt rating = 1.obs;
  late OrderItem orderItem;
  String comment = '';
  late User user;

  void onRatingChanged(int value) {
    rating.value = value;
  }

  void onCommentChanged(String value) {
    comment = value;
  }

  Future<void> onSubmitReview() async {
    var response = await HttpClient.post(
        endpoint: 'products/${orderItem.product}/reviews',
        data: {
          "user": user.id,
          "comment": comment,
          "rating": rating.value,
        },
        token: user.accessToken);
    print(response);
  }

  @override
  void onInit() {
    orderItem = Get.arguments["orderItem"];
    user = _mainController.user;
    super.onInit();
  }
}
