import 'package:flutter/material.dart';

class CustomReviewPart extends StatelessWidget {
  const CustomReviewPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Review (4.5) ⭐'),
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
