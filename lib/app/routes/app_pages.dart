import 'package:get/get.dart';

import 'package:tes_cli/app/modules/User/bindings/user_binding.dart';
import 'package:tes_cli/app/modules/User/views/user_view.dart';
import 'package:tes_cli/app/modules/add_product/bindings/add_product_binding.dart';
import 'package:tes_cli/app/modules/add_product/views/add_product_view.dart';
import 'package:tes_cli/app/modules/home/bindings/home_binding.dart';
import 'package:tes_cli/app/modules/home/views/home_view.dart';
import 'package:tes_cli/app/modules/product/bindings/product_binding.dart';
import 'package:tes_cli/app/modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.USER,
      page: () => UserView(),
      binding: UserBinding(),
    ),
  ];
}
