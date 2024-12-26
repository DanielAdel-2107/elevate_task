import 'package:elevate_task/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle textStyle16DarkBlue = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 16.sp,
  );

  static TextStyle textStyle14Blue = TextStyle(
      color: Colors.blue,
      fontSize: 14.sp,
      decoration: TextDecoration.lineThrough,
      fontWeight: FontWeight.w400);

  static TextStyle textStyle20DarkBlue = TextStyle(
    color: AppColors.darkBlueColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
  );
}
