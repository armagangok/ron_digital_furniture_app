import 'package:get/state_manager.dart';

class CartController extends GetxController {
  final productNumber = RxInt(0);

  int get getProductNumber => productNumber.value;

  void addProduct() {
    productNumber.value++;
  }

  void removeProduct() {
    if (productNumber.value > 0) {
      productNumber.value--;
    }
  }
}
