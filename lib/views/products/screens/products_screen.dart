import 'package:elevate_task/views/products/widgets/product_screen_body.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductScreenBody(),
    );
  }
}
