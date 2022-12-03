import 'package:get/get.dart';
import 'package:jv_app/screens/mobile_login_screen.dart';
import 'package:jv_app/screens/onboarding_screen.dart';
import 'package:jv_app/screens/verification_screen.dart';

import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var welcomeScreen = "/welcomeScreen";
  static var onBoardingScreen = "/onBoardingScreen";
  static var onMobileLoginScreen = "/onMobileLoginScreen";
  static var onVerificationScreen = "/onVerificationScreen";



  static var route = [
    GetPage(name: '/', page: () => const SplashScreen()),
    GetPage(name: MyRouter.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(name: MyRouter.onBoardingScreen, page: () => const OnBoardongScreen()),
    GetPage(name: MyRouter.onMobileLoginScreen, page: () => const Mobile_Login_screen()),
    GetPage(name: MyRouter.onVerificationScreen, page: () => const VerificationScreen()),

  ];
}
