import 'package:fitness_app/app/routes/app_routes.dart';
import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_images.dart';
import 'package:fitness_app/app/utils/app_strings.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:fitness_app/app/widgets/generic_appBar.dart';
import 'package:fitness_app/app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LoginWithSocial extends StatelessWidget {
  const LoginWithSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      appBar: appBar(),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 33.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.chooseanAccount,
              style: regular30,
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.faceBook,
                ),
                SizedBox(
                  width: 48.w,
                ),
                Text(
                  'Facebook',
                  style: regular24,
                )
              ],
            ),
            SizedBox(
              height: 32.h,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.goole,
                ),
                SizedBox(
                  width: 48.w,
                ),
                Text(
                  'Google',
                  style: regular24,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Text(
              'By clicking on a social option you may recieve an SMS \nfor verification. Message and data rates may apply.',
              style: regular14.copyWith(
                color: AppColors.LIGHT_GRAY_COLOR,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
            ),
            GestureDetector(
              onTap: () => Get.toNamed(
                AppRoutes.otpPage,
              ),
              child: GenericButton(
                buttonName: AppStrings.nextBtnName,
                callback: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
