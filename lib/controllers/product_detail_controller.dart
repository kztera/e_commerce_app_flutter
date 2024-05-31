import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/model/review_summary.dart';
import 'package:zzz_book_store/model/wishlist.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class ProductDetailController extends GetxController {
  static ProductDetailController get instance => Get.find();
  final MainController mainController = MainController.instance;
  String token = '';

  RxBool isLoading = true.obs;
  RxBool isExistWishList = false.obs;

  String productId = Get.arguments["productId"];
  Rxn<Product> product = Rxn<Product>();
  RxString mainImageUrl = ''.obs;

  Rxn<ReviewSummary> reviews = Rxn<ReviewSummary>();

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
        productAuthorName: product.value!.author[0].name
      );
      mainController.wishlist.add(wishlist);
      addToWishlist();
    } else {
      mainController.wishlist.removeWhere((item) => item.id == product.value!.id);
      removeFromWishlist();
    }
  }

  void isExistProductInWishlist() {
    if (product.value == null) return;

    isExistWishList.value = mainController.wishlist.any((wishlistProduct) => product.value!.id == wishlistProduct.id);
  }

  Future<void> addToWishlist() async {
    if (product.value == null) return;

    await HttpClient.post(
        endpoint: 'users/${mainController.user.id}/wishlist', data: {"productId": product.value!.id}, token: token);
  }

  Future<void> removeFromWishlist() async {
    if (product.value == null) return;

    await HttpClient.delete(endpoint: 'users/${mainController.user.id}/wishlist/${product.value!.id}', token: token);
  }

  Future<void> getProductDetail() async {
    isLoading.value = true;
    var response = await HttpClient.get(endpoint: "products/$productId", token: mainController.user.accessToken);

    product.value = Product.fromJson(response);
    mainImageUrl.value = product.value!.images[0];
  }

  Future<void> getReviews() async {
    isLoading.value = true;
    var response = await HttpClient.get(
      endpoint: "products/$productId/reviews",
      token: token,
    );
    reviews.value = ReviewSummary.fromJson(response);
    isLoading.value = false;
  }

  void addToCart() {
    mainController.onAddToCart(productId);
  }

  @override
  void onInit() {
    super.onInit();
    token = mainController.user.accessToken!;
    getProductDetail().then((_) {
      isLoading.value = false;
      isExistProductInWishlist();
    });
  }
}
