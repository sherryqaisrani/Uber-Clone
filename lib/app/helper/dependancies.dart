import 'package:fitness_app/app/controllers/splash_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

Future<void> init() async {
  Get.lazyPut(() => SplashController(), fenix: true);
}
