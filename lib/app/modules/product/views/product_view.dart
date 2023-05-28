import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tes_cli/app/modules/product/views/product_item_view.dart';

import 'package:tes_cli/app/routes/app_pages.dart';

import '../controllers/product_controller.dart';

class ProductView extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.allProduct.length,
          itemBuilder: (context, index) =>
              ProductItem(controller.allProduct[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_PRODUCT),
        child: Icon(Icons.add),
      ),
    );
  }
}
