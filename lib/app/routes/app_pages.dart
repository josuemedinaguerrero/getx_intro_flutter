import 'package:get/get.dart';
import 'package:getx_intro/app/modules/product/views/cart_view.dart';
import 'package:getx_intro/app/modules/product/views/product_details_view.dart';
import 'package:getx_intro/app/modules/product/views/product_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.PRODUCT, page: () => ProductView()),
    GetPage(name: Routes.PRODUCT_DETAILS, page: () => ProductDetailsView()),
    GetPage(name: Routes.CART, page: () => CartView()),
  ];
}
