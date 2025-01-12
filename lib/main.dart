import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:getx_intro/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_intro/app/routes/app_pages.dart';
import 'package:getx_intro/app/services/cart_service.dart';

void main() async {
  await GetStorage.init();

  // Get.put(CartController());

  Get.put(CartService());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      initialRoute: Routes.PRODUCT,
      getPages: AppPages.routes,
    );
  }
}
