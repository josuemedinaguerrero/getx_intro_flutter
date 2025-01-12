import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_intro/app/modules/product/controllers/cart_controller.dart';
import 'package:getx_intro/app/modules/product/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  final CartController cartController = Get.find<CartController>();

  ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    final ProductModel product = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Get.offAllNamed('/cart');
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Go Back'),
              onPressed: () {
                Get.back();
              },
            ),
            SizedBox(height: 10),
            Text(product.name, style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('\$${product.price.toString()}', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Add to Cart'),
              onPressed: () {
                cartController.addToCart(product);
                Get.snackbar(
                  'Added to Cart',
                  '${product.name} added to your cart',
                  snackPosition: SnackPosition.BOTTOM,
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                  colorText: Colors.white,
                );
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("More Actions"),
              onPressed: () {
                Get.bottomSheet(Container(
                  color: Colors.white,
                  child: Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.shopping_cart),
                        title: Text('View Cart'),
                        onTap: () {
                          Get.toNamed('/cart');
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.payment),
                        title: Text('Proceed to Checkout'),
                        onTap: () {
                          Get.toNamed('/checkout');
                        },
                      ),
                    ],
                  ),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
