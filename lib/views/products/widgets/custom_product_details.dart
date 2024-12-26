import 'package:elevate_task/models/product_model.dart';
import 'package:elevate_task/utils/styles/app_text_styles.dart';
import 'package:elevate_task/views/products/widgets/custom_review_part.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productModel.title,
            style: AppTextStyles.textStyle16DarkBlue,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            productModel.description,
            style: AppTextStyles.textStyle16DarkBlue,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'EG: ${productModel.price} ',
                    style: AppTextStyles.textStyle16DarkBlue),
                TextSpan(
                  text: ' 2000',
                  style: AppTextStyles.textStyle14Blue,
                )
              ],
            ),
          ),
          CustomReviewPart(
            ratingModel: productModel.ratingModel,
          )
        ],
      ),
    );
  }
}
