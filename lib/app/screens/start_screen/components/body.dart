import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_images.dart';
import 'package:fitness_app/app/utils/app_strings.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:fitness_app/app/widgets/generic_button.dart';
import 'package:fitness_app/app/widgets/splash_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.SECONDARY_COLOR, AppColors.SECOND_SECONDARY_COLOR],
          stops: [0, 100],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 60.h,
                right: 5.w,
                child: Image.asset(
                  AppImages.arrowPng,
                ),
              ),
              SplashBox(),
            ],
          ),
          SizedBox(
            height: 41.h,
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 70.w,
            ),
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.r,
              ),
              border: Border.all(
                color: AppColors.LIGHT_WHITE,
                width: 1,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 13.h,
                horizontal: 20.w,
              ),
              child: Row(
                children: [
                  Text(
                    AppStrings.moveWithSafty,
                    style: regular20,
                  ),
                  SvgPicture.asset(
                    AppImages.saftyIcon,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 170.h,
          ),
          GenericButton(
            shadowColor: AppColors.SECONDARY_COLOR,
            callback: () {},
            buttonName: AppStrings.getStarted,
            svgPath: AppImages.nextArrow,
            isGredient: true,
          ),
        ],
      ),
    );
  }
}
