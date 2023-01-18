import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:fitness_app/app/controllers/login_controller.dart';
import 'package:fitness_app/app/routes/app_routes.dart';
import 'package:fitness_app/app/utils/app_colors.dart';
import 'package:fitness_app/app/utils/app_strings.dart';
import 'package:fitness_app/app/utils/app_text_style.dart';
import 'package:fitness_app/app/widgets/generic_appBar.dart';
import 'package:fitness_app/app/widgets/generic_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRIMARY_COLOR,
      appBar: appBar(),
      body: GetBuilder<LoginController>(builder: (controller) {
        return Padding(
          padding: REdgeInsets.symmetric(
            horizontal: 33.w,
          ),
          child: Column(
            children: [
              Text(
                AppStrings.enterMobileNumber,
                style: regular30,
              ),
              SizedBox(
                height: 31.h,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: _buildCountryPickerDropdown(
                      sortedByIsoCode: true,
                      context: context,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              GestureDetector(
                onTap: () => Get.toNamed(
                  AppRoutes.loginWithSocial,
                ),
                child: Row(
                  children: [
                    Text(
                      AppStrings.orSocialContact,
                      style: regular24.copyWith(
                        color: AppColors.SECONDARY_COLOR,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: AppColors.SECONDARY_COLOR,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
              ),
              Text(
                'By continuing you may recieve an SMS for\nverification. Message and data rates may apply.',
                style: regular16.copyWith(
                  color: AppColors.LIGHT_GRAY_COLOR,
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              GenericButton(
                buttonName: AppStrings.nextBtnName,
                callback: () => Get.toNamed(
                  AppRoutes.otpPage,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }

  _buildCountryPickerDropdown({
    bool filtered = false,
    bool sortedByIsoCode = false,
    bool hasPriorityList = false,
    bool hasSelectedItemBuilder = false,
    required BuildContext context,
  }) {
    double dropdownButtonWidth = MediaQuery.of(context).size.width * 0.5;
    //respect dropdown button icon size
    double dropdownItemWidth = dropdownButtonWidth - 90;
    double dropdownSelectedItemWidth = dropdownButtonWidth - 30;
    return Row(
      children: [
        SizedBox(
          child: CountryPickerDropdown(
            onTap: () => FocusScope.of(context).requestFocus(
              FocusNode(),
            ),
            selectedItemBuilder: hasSelectedItemBuilder == true
                ? (Country country) => _buildDropdownSelectedItemBuilder(
                      country,
                      dropdownSelectedItemWidth,
                    )
                : null,
            itemBuilder: (Country country) => hasSelectedItemBuilder == true
                ? _buildDropdownItemWithLongText(
                    country,
                    dropdownItemWidth,
                  )
                : _buildDropdownItem(
                    country,
                    dropdownItemWidth,
                  ),
            initialValue: 'AR',
            itemFilter: filtered
                ? (c) => ['AR', 'DE', 'GB', 'CN'].contains(c.isoCode)
                : null,
            priorityList: hasPriorityList
                ? [
                    CountryPickerUtils.getCountryByIsoCode('GB'),
                    CountryPickerUtils.getCountryByIsoCode('CN'),
                  ]
                : null,
            sortComparator: sortedByIsoCode
                ? (Country a, Country b) => a.isoCode.compareTo(b.isoCode)
                : null,
            onValuePicked: (Country country) {
              print(country.name);
            },
          ),
        ),
        SizedBox(
          width: 8.0.h,
        ),
        Expanded(
          child: TextField(
            style: regular24.copyWith(
              color: AppColors.DARK_GRAY,
            ),
            decoration: InputDecoration(
              hintText: '8299482482',
              hintStyle: regular24.copyWith(
                color: AppColors.DARK_GRAY,
              ),
              contentPadding: EdgeInsets.zero,
            ),
            keyboardType: TextInputType.number,
          ),
        )
      ],
    );
  }

  Widget _buildDropdownItem(Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0.h,
            ),
            Expanded(
              child: Text(
                "+${country.phoneCode}",
                style: regular24,
              ),
            ),
          ],
        ),
      );
  Widget _buildDropdownItemWithLongText(
          Country country, double dropdownItemWidth) =>
      SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(
                width: 8.0.h,
              ),
              Text(country.name),
            ],
          ),
        ),
      );

  Widget _buildDropdownSelectedItemBuilder(
          Country country, double dropdownItemWidth) =>
      SizedBox(
        width: dropdownItemWidth,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: <Widget>[
              CountryPickerUtils.getDefaultFlagImage(country),
              SizedBox(
                width: 8.0.h,
              ),
              Expanded(
                  child: Text(
                country.name,
                style: const TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
          ),
        ),
      );
}
