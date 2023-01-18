import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  
  @override
  void onInit() {
    super.onInit();
  }

   Country selectedDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('90');

  Country selectedFilteredDialogCountry =
      CountryPickerUtils.getCountryByPhoneCode('90');

  Country selectedCupertinoCountry =
      CountryPickerUtils.getCountryByIsoCode('tr');

  Country selectedFilteredCupertinoCountry =
      CountryPickerUtils.getCountryByIsoCode('DE');

  
}
