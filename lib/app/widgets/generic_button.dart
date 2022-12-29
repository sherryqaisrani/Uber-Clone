import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenericButton extends StatelessWidget {
  Color? shadowColor;
  Color? backgroundColor;
  bool? isGredient;
  final String buttonName;
  String? svgPath;
  final VoidCallback callback;

  GenericButton({
    Key? key,
    required this.buttonName,
    required this.callback,
    this.shadowColor = AppColors.SECONDARY_COLOR,
    this.isGredient = false,
    this.backgroundColor,
    this.svgPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 36.w,
      ),
      child: Container(
        width: double.maxFinite,
        height: 58.h,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.PRIMARY_COLOR,
          boxShadow: [
            BoxShadow(
              offset: const Offset(1, 1),
              color: shadowColor!,
              blurRadius: 4,
            ),
            BoxShadow(
              offset: const Offset(-1, 0),
              color: shadowColor!,
              blurRadius: 4,
            )
          ],
          gradient: isGredient!
              ? const LinearGradient(
                  begin: Alignment(-1.0, -2.0),
                  end: Alignment(1.0, -2.0),
                  colors: [
                      AppColors.SECONDARY_COLOR,
                      AppColors.SECOND_SECONDARY_COLOR,
                    ],
                  stops: [
                      0,
                      100
                    ])
              : null,
        ),
        child: ElevatedButton(
          onPressed: callback,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                buttonName,
                style: regular20.copyWith(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(
                width: 7.w,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 17.h,
                ),
                child: SvgPicture.asset(
                  svgPath!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
