import 'package:fitness_app/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    goToNext();
  }

  void goToNext() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAllNamed(AppRoutes.getStarted);
  }
}
