import 'package:elevate_task/models/product_model.dart';
import 'package:flutter/material.dart';

class CustomReviewPart extends StatelessWidget {
  const CustomReviewPart({
    super.key,
    required this.ratingModel,
  });

  final RatingModel ratingModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Review (${ratingModel.rate}) ⭐'),
        CircleAvatar(
          backgroundColor: Color(0xff004087),
          child: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
