import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:fitness_app/app/widgets/generic_appBar.dart';
import 'package:fitness_app/app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPSCREEN extends StatelessWidget {
  OTPSCREEN({super.key});
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const focusedBorderColor = AppColors.LIGHT_WHITE;

    final defaultPinTheme = PinTheme(
      width: 40.h,
      height: 56,
      textStyle: TextStyle(
        fontSize: 27.sp,
        color: AppColors.DARK_GRAY,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.DARK_GRAY,
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      appBar: appBar(),
      body: Padding(
        padding: REdgeInsets.symmetric(
          horizontal: 33.h,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter the 4-digit code sent to \nyou at',
                style: regular24.copyWith(
                  color: AppColors.LIGHT_GRAY_COLOR,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '+91 95864 32107.',
                style: regular24,
              ),
              SizedBox(
                height: 20.h,
              ),
              Directionality(
                // Specify direction if desired
                textDirection: TextDirection.ltr,
                child: Pinput(
                  controller: pinController,
                  focusNode: focusNode,
                  androidSmsAutofillMethod:
                      AndroidSmsAutofillMethod.smsUserConsentApi,
                  listenForMultipleSmsOnAndroid: true,
                  defaultPinTheme: defaultPinTheme,
                  validator: (value) {
                    return value == '2222' ? null : 'Pin is incorrect';
                  },
                  // onClipboardFound: (value) {
                  //   debugPrint('onClipboardFound: $value');
                  //   pinController.setText(value);
                  // },
                  hapticFeedbackType: HapticFeedbackType.lightImpact,
                  onCompleted: (pin) {
                    debugPrint('onCompleted: $pin');
                  },
                  onChanged: (value) {
                    debugPrint('onChanged: $value');
                  },
                  cursor: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 9),
                        width: 22,
                        height: 1,
                        color: focusedBorderColor,
                      ),
                    ],
                  ),
                  focusedPinTheme: defaultPinTheme,
                  submittedPinTheme: defaultPinTheme,
                  errorPinTheme: defaultPinTheme.copyBorderWith(
                    border: Border(
                      bottom: BorderSide(
                        color: AppColors.ERROR_COLOR,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Text(
                'Resend Code',
                style: regular18.copyWith(
                  color: AppColors.SECONDARY_COLOR,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
              ),
              GenericButton(buttonName: 'Next', callback: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
