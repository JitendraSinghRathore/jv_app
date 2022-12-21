import 'package:get/get.dart';
import 'package:jv_app/screens/account_screens/edit_profile.dart';
import 'package:jv_app/screens/account_screens/help_screen.dart';
import 'package:jv_app/screens/account_screens/manageaddress.dart';
import 'package:jv_app/screens/account_screens/referearn.dart';
import 'package:jv_app/screens/bookings/mybooking.dart';
import 'package:jv_app/screens/mobile_login_screen.dart';
import 'package:jv_app/screens/onboarding_screen.dart';
import 'package:jv_app/screens/verification_screen.dart';

import '../screens/account_screens/supportChat_screen.dart';
import '../screens/home_screens/main_home_screen.dart';
import '../screens/home_screens/notification_screen.dart';
import '../screens/home_screens/services_screen.dart';
import '../screens/home_screens/store_list.dart';
import '../screens/home_screens/store_screen.dart';
import '../screens/home_screens/summary_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/welcome_screen.dart';

class MyRouter {
  static var splashScreen = "/splashScreen";
  static var welcomeScreen = "/welcomeScreen";
  static var onBoardingScreen = "/onBoardingScreen";
  static var onMobileLoginScreen = "/onMobileLoginScreen";
  static var onVerificationScreen = "/onVerificationScreen";
  static var bottomNavBarHomeScreen = "/bottomNavBarHomeScreen";
  static var servicesScreen = "/servicesScreen";
  static var storeListScreen = "/storeListScreen";
  static var storeScreen = "/storeScreen";
  static var summaryScreen = "/summaryScreen";
  static var editProfileScreen = "/editProfileScreen";
  static var manageAddressScreen = "/manageAddressScreen";
  static var referEarnScreen = "/referEarnScreen";
  static var myBookingScreen = "/myBookingScreen";
  static var notificationScreen = "/notificationScreen";

  static var helpScreen = "/helpScreen";
  static var supportChat = "/supportChat";


  static var route = [
    GetPage(name: '/', page: () => const OnBoardongScreen()),
    GetPage(name: MyRouter.welcomeScreen, page: () => const WelcomeScreen()),
    GetPage(
        name: MyRouter.onBoardingScreen, page: () => const OnBoardongScreen()),
    GetPage(
        name: MyRouter.onMobileLoginScreen,
        page: () => const Mobile_Login_screen()),
    GetPage(
        name: MyRouter.onVerificationScreen,
        page: () => const VerificationScreen()),
    GetPage(
        name: MyRouter.bottomNavBarHomeScreen,
        page: () => const BottomNavBarHomeScreen()),
    GetPage(name: MyRouter.servicesScreen, page: () => const ServicesScreen()),
    GetPage(
        name: MyRouter.storeListScreen, page: () => const StoreListScreen()),
    GetPage(name: MyRouter.storeScreen, page: () => const StoreScreen()),
    GetPage(name: MyRouter.summaryScreen, page: () => const SummaryScreen()),
    GetPage(
        name: MyRouter.editProfileScreen,
        page: () => const EditProfileScreen()),
    GetPage(
        name: MyRouter.manageAddressScreen,
        page: () => const ManageAddressScreen()),
    GetPage(
        name: MyRouter.referEarnScreen, page: () => const ReferEarnScreen()),
    GetPage(
        name: MyRouter.myBookingScreen, page: () => const MyBookingScreen()),

    GetPage(
        name: MyRouter.notificationScreen, page: () => const NotificationScreen()),

    GetPage(
        name: MyRouter.supportChat, page: () => const SupportChatScreen()),


  ];
}
