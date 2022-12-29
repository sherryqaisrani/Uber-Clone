import 'package:fitness_app/app/controllers/splash_controller.dart';
import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/widgets/splash_box.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(builder: (context) {
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.SECONDARY_COLOR,
                AppColors.SECOND_SECONDARY_COLOR
              ],
              stops: [0, 100],
            ),
          ),
          child: const Center(
            child: SplashBox(),
          ),
        );
      }),
    );
  }
}
