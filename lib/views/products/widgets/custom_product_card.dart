import 'package:elevate_task/models/product_model.dart';
import 'package:elevate_task/utils/colors/app_colors.dart';
import 'package:elevate_task/views/products/widgets/custom_product_details.dart';
import 'package:elevate_task/views/products/widgets/custom_product_image.dart';
import 'package:flutter/material.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: AppColors.primaryColor,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomProductImage(productModel: productModel),
          ProductDetails(productModel: productModel)
        ],
      ),
    );
  }
}
