import 'package:elevate_task/models/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProductImage extends StatelessWidget {
  const CustomProductImage({
    super.key,
    required this.productModel,
  });

  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          productModel.image,
          height: 150.h,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
          top: 10.h,
          right: 10.w,
          child: CircleAvatar(
              radius: 16.r,
              backgroundColor: Colors.white,
              child: IconButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.heart))),
        )
      ],
    );
  }
}
