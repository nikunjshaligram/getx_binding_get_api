// ignore_for_file: constant_identifier_names

import 'package:get/get.dart';
import 'package:getx_binding_get_api/modules/binding/product_binding.dart';
import 'package:getx_binding_get_api/modules/views/product_screen.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PRODUCT;

  static final routes = [
    GetPage(
        name: _Paths.PRODUCT,
        page: () => const ProductScreen(),
        binding: ProductBinding())
  ];
}
