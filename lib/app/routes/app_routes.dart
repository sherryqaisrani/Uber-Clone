import 'package:fitness_app/app/screens/spalsh/splash_screen.dart';
import 'package:fitness_app/app/screens/start_screen/start_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  // initial route
  static const INITIAL_ROUTE = '/';

  //Get Started
  static const GET_STARTED = '/get_started';

  static final ROUTES = [
    // splash Route
    GetPage(
      name: INITIAL_ROUTE,
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: GET_STARTED,
      page: () => const StartScreen(),
      transition: Transition.leftToRightWithFade,
    )
  ];
}
