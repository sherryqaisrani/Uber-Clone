import 'package:fitness_app/app/routes/app_routes.dart';
import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_images.dart';
import 'package:fitness_app/app/utils/app_strings.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:fitness_app/app/widgets/generic_button.dart';
import 'package:fitness_app/app/widgets/splash_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';

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
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          GestureDetector(
            onTap: () => Get.toNamed(
              AppRoutes.LOGIN,
            ),
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.symmetric(
                horizontal: 70.w,
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.SECONDARY_COLOR,
                      AppColors.SECOND_SECONDARY_COLOR
                    ],
                    stops: [0, 110],
                  ),
                  boxShadow: [
                    // BoxShadow(
                    //   color: AppColors.SECOND_LIGHT_GRAY_COLOR.withOpacity(0.4),
                    //   blurRadius: 10,
                    //   offset: const Offset(-1, -1),
                    // ),
                    BoxShadow(
                      color: AppColors.BLACK_COLOR.withOpacity(0.3),
                      spreadRadius: -0.1,
                      blurRadius: 0.5,
                      offset: const Offset(1.5, 1.5),
                    ),
                  ]),
              child: Padding(
                padding: REdgeInsets.symmetric(
                  vertical: 16.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppStrings.getStarted,
                      style: regular20,
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    SvgPicture.asset(
                      AppImages.nextArrow,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
