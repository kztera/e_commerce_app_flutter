import 'package:zzz_book_store/model/cart.dart';

class PricingCalculator {
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);

    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  static int calculateTax(int productPrice) {
    double taxAmount = productPrice * 0.05;
    return taxAmount.round();
  }

  static double getTaxRateForLocation(String location) {
    // có thể lấy thông tin tax rate từ database hoặc API
    // tạm fix cứng 10% cho mọi location
    return 0.10;
  }

  static double getShippingCost(String location) {
    // lấy thông tin shipping cost từ API dựa vào location
    // tính toán dựa trên nhiều yếu tố như khoảng cách, trọng lượng, ...
    // tạm fix cứng 30.000 VND cho mọi location
    return 30000;
  }

  static int getSaleOffPrice(int price, int saleOff) {
    return (price * (100 - saleOff) / 100).round();
  }

  static int totalAmount(List<Cart> carts) {
    int totalAmount = 0;
    for (Cart cart in carts) {
      totalAmount += getSaleOffPrice(cart.price, cart.saleOff);
    }
    return totalAmount;
  }
}
