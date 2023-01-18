import 'package:fitness_app/app/controllers/login_controller.dart';
import 'package:fitness_app/app/controllers/splash_controller.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // Splash Controller
  Get.lazyPut(() => SplashController(), fenix: true);
  // Login Controller
  Get.lazyPut(() => LoginController(), fenix: true);
}
