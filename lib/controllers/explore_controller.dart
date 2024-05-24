import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zzz_book_store/controllers/main_controller.dart';
import 'package:zzz_book_store/model/author.dart';
import 'package:zzz_book_store/model/product.dart';
import 'package:zzz_book_store/utils/http/http_client.dart';

class ExploreController extends GetxController with GetSingleTickerProviderStateMixin {
  static ExploreController get instance => Get.find();
  final MainController mainController = MainController.instance;
  late TabController tabController;
  var products = <Product>[].obs;
  var authors = <Author>[].obs;

  RxBool isLoading = true.obs;

  String prevId = '';

  void onChangeCategory(int index) {
    var categoryId = mainController.categories[index].id;
    if (prevId == categoryId) {
      return;
    }
    prevId = categoryId;
    getProductByCategoryId(categoryId);
  }

  Future<void> getAuthors() async {
    var response = await HttpClient.get(
      endpoint: "authors",
      token: mainController.user.accessToken,
    ) as List;

    authors.assignAll(response.map((json) => Author.fromJson(json)));
  }

  Future<void> getProductByCategoryId(String categoryId) async {
    try {
      isLoading.value = true;
      var response =
          await HttpClient.get(endpoint: "products?category=$categoryId", token: mainController.user.accessToken)
              as List;
      products.clear();
      products.addAll(response.map((json) => Product.fromJson(json)));
    } catch (e) {
      log('Error fetching products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    prevId = mainController.categories[0].id;
    getAuthors();
    getProductByCategoryId(prevId);
    tabController = TabController(length: mainController.categories.length, vsync: this);

    tabController.addListener(() {
      if (tabController.indexIsChanging) {
        onChangeCategory(tabController.index);
      } else if (tabController.index != tabController.previousIndex) {
        onChangeCategory(tabController.index);
      }
    });
    super.onInit();
  }
}
