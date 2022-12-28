import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get regular64 {
  return GoogleFonts.openSans(
      textStyle: TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Open Sans',
    fontSize: 64.sp,
    color: AppColors.LIGHT_WHITE,
  ));
}

TextStyle get regular16 {
  return GoogleFonts.openSans(
      textStyle: TextStyle(
    fontWeight: FontWeight.w600,
    fontFamily: 'Open Sans',
    fontSize: 16.sp,
    color: AppColors.LIGHT_WHITE,
  ));
}

TextStyle get regular14 {
  return GoogleFonts.openSans(
      textStyle: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    fontFamily: 'Open Sans',
    color: AppColors.LIGHT_WHITE,
  ));
}

TextStyle get regular12 {
  return GoogleFonts.openSans(
      textStyle: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 12.sp,
    fontFamily: 'Open Sans',
    color: AppColors.LIGHT_WHITE,
  ));
}

TextStyle get regular10 {
  return GoogleFonts.openSans(
      textStyle: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 10.sp,
    fontFamily: 'Open Sans',
    color: AppColors.LIGHT_WHITE,
  ));
}
