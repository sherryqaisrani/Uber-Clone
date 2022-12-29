import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_strings.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashBox extends StatelessWidget {
  const SplashBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 181.h,
      width: 181.h,
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [
            AppColors.SECONDARY_COLOR,
            AppColors.SECOND_SECONDARY_COLOR
          ], stops: [
            0,
            110
          ]),
          borderRadius: BorderRadius.circular(
            20.r,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.SECOND_LIGHT_GRAY_COLOR.withOpacity(0.4),
              blurRadius: 10,
              offset: const Offset(-1, -1),
            ),
            BoxShadow(
              color: AppColors.BLACK_COLOR.withOpacity(0.3),
              spreadRadius: -0.1,
              blurRadius: 0.5,
              offset: const Offset(1.5, 1.5),
            ),
          ]),
      child: Center(
        child: Text(
          AppStrings.appName,
          style: regular64,
        ),
      ),
    );
  }
}
