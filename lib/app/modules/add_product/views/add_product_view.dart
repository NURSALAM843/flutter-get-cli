import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tes_cli/app/modules/product/controllers/product_controller.dart';

import '../controllers/add_product_controller.dart';

class AddProductView extends GetView<AddProductController> {
  final productC = Get.find<ProductController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddProductView'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: controller.nameC,
            decoration: InputDecoration(
              labelText: "Product Name",
            ),
          ),
          TextField(
            controller: controller.priceC,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Product Price",
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () => productC.addProduct(
                controller.nameC.text, controller.priceC.text),
            child: Text(
              "ADD PRODUCT",
            ),
          ),
        ],
      ),
    );
  }
}
