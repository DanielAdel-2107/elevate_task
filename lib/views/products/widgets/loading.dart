import 'package:elevate_task/utils/colors/app_colors.dart';
import 'package:elevate_task/utils/styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class Loading extends StatelessWidget {
  const Loading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Waiting for Upload data ...',
            style: AppTextStyles.textStyle20DarkBlue,
          ),
          Gap(20.h),
          LinearProgressIndicator(
            color: AppColors.primaryColor,
          )
        ],
      ),
    ));
  }
}
