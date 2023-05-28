import 'package:get/get.dart';

class ProductController extends GetxController {
  RxList<Map<String, dynamic>> allProduct = <Map<String, dynamic>>[
    {
      "id": 1,
      "name": "Sendal",
      "price": 10000,
    },
    {
      "id": 2,
      "name": "Sepatu",
      "price": 25000,
    },
    {
      "id": 3,
      "name": "Baju",
      "price": 100000,
    },
  ].obs;

  void addProduct(String name, String price) {
    if (name.isNotEmpty && price.isNotEmpty) {
      allProduct.add({
        "id": DateTime.now().toIso8601String(),
        "name": name,
        "price": int.parse(price),
      });
      Get.back();
    }
  }
}
