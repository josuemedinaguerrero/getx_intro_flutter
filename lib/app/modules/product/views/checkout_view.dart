import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/app/modules/product/controllers/cart_controller.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thank you for your purchase!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Back to Home'),
              onPressed: () {
                final CartController cartController = Get.find<CartController>();

                cartController.cartService.clearCart();

                Get.snackbar(
                  'Order completed',
                  'Your order has been placed successfully!',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 3),
                  backgroundColor: Colors.blue,
                  colorText: Colors.white,
                );

                Get.offAllNamed('/product');
              },
            ),
          ],
        ),
      ),
    );
  }
}
