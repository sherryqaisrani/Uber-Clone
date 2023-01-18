import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: AppColors.PRIMARY_COLOR,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Get.back(),
      icon: const Icon(
        Icons.arrow_back,
        color: AppColors.DARK_GRAY,
      ),
    ),
  );
}
