import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/model/wishlist.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get instance => Get.find();
  final MainController _mainController = MainController.instance;

  RxBool isLoading = true.obs;
  RxBool isExistWishList = false.obs;

  String productId = Get.arguments["productId"];
  Rxn<Product> product = Rxn<Product>();

  RxString mainImageUrl = ''.obs;

  void updateMainImageUrl(String url) {
    mainImageUrl.value = url;
  }

  void toggleWishlistAction() {
    if (product.value == null) return;

    isExistWishList.value = !isExistWishList.value;

    if (isExistWishList.isTrue) {
      Wishlist wishlist = Wishlist(
          productId: product.value!.id,
          productName: product.value!.name,
          productImage: product.value!.image,
          productPrice: product.value!.price,
          productSaleOff: product.value!.saleOff,
          productExists: true);
      _mainController.wishlist.add(wishlist);
      addToWishlist();
    } else {
      _mainController.wishlist
          .removeWhere((item) => item.id == product.value!.id);
      removeFromWishlist();
    }
  }

  void isExistProductInWishlist() {
    if (product.value == null) return;

    isExistWishList.value = _mainController.wishlist
        .any((wishlistProduct) => product.value!.id == wishlistProduct.id);
  }

  Future<void> addToWishlist() async {
    if (product.value == null) return;

    await HttpClient.post(
        endpoint: 'users/${_mainController.user.id}/wishlist',
        data: {"productId": product.value!.id},
        token: _mainController.user.accessToken);
  }

  Future<void> removeFromWishlist() async {
    if (product.value == null) return;

    await HttpClient.delete(
        endpoint:
            'users/${_mainController.user.id}/wishlist/${product.value!.id}',
        token: _mainController.user.accessToken);
  }

  Future<void> getProductDetail() async {
    isLoading.value = true;
    var response = await HttpClient.get(
        endpoint: "products/$productId",
        token: _mainController.user.accessToken);

    product.value = Product.fromJson(response);
    mainImageUrl.value = product.value!.images[0];
  }

  @override
  void onInit() {
    super.onInit();
    getProductDetail().then((_) {
      isLoading.value = false;
      isExistProductInWishlist();
    });
  }
}
