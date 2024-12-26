import 'package:elevate_task/view_models/product_provider.dart';
import 'package:elevate_task/views/products/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.provider,
  });
  final ProductProvider provider;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: provider.searchList.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomProductCard(
            productModel: provider.searchList[index],
          );
        });
  }
}
