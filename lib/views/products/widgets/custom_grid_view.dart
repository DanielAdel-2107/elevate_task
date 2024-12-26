import 'package:elevate_task/models/product_model.dart';
import 'package:elevate_task/views/products/widgets/custom_product_card.dart';
import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
  });
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
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return CustomProductCard(
            productModel: ProductModel(
                id: 1,
                ratingModel: RatingModel(rate: 4.5, count: 21),
                category: "category",
                title: "title",
                image: "image",
                price: 45.5,
                description: "description"),
          );
        });
  }
}
