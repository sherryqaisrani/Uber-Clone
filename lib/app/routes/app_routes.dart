import 'package:fitness_app/app/screens/login/login.dart';
import 'package:fitness_app/app/screens/login/opt_screen.dart';
import 'package:fitness_app/app/screens/login/with_social.dart';
import 'package:fitness_app/app/screens/spalsh/splash_screen.dart';
import 'package:fitness_app/app/screens/start_screen/start_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  // initial route
  static const initialRoute = '/';

  //Get Started
  static const getStarted = '/get_started';

  //Login
  static const login = '/login';

  static const loginWithSocial = '/login_social';
  static const otpPage = '/otp_page';

  static final ROUTES = [
    // splash Route
    GetPage(
      name: initialRoute,
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: getStarted,
      page: () => const StartScreen(),
      transition: Transition.leftToRightWithFade,
    ),
     GetPage(
      name: login,
      page: () => const LoginScreen(),
      transition: Transition.leftToRightWithFade,
    ),
     GetPage(
      name: loginWithSocial,
      page: () => const LoginWithSocial(),
      transition: Transition.leftToRightWithFade,
    ),
     GetPage(
      name: otpPage,
      page: () =>  OTPSCREEN(),
      transition: Transition.leftToRightWithFade,
    )
  ];
}
