import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jv_app/resources/app_assets.dart';
import 'package:jv_app/screens/account_screens/account_screen.dart';

import '../../controllers/main_home_controller.dart';
import '../../resources/app_theme.dart';
import '../../resources/common_text.dart';
import '../../resources/dimensions.dart';
import 'jeveux_screen.dart';

class BottomNavBarHomeScreen extends StatefulWidget {
  const BottomNavBarHomeScreen({Key? key}) : super(key: key);
  static const String bottomNavBarRoute = "/bottomNavBarRoute";

  @override
  State<BottomNavBarHomeScreen> createState() => _BottomNavBarHomeScreenState();
}

class _BottomNavBarHomeScreenState extends State<BottomNavBarHomeScreen> {
  final controller = Get.put(MainHomeController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        key: controller.scaffoldKey,
        // drawer: const DrawerScreen(),
        body: Obx(() {
          return IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              JEveuxScreen(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              AccountScreen(),
            ],
          );
        }),
        bottomNavigationBar: Obx(() {
          return BottomAppBar(
            elevation: 5,
            child: Container(
              height: AddSize.size100 * .6,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  commonButton(
                    onTap: () {
                      controller.changeIndex(0);
                    },
                    image: AppAssets.jeLogo,
                    dashBoardText: "JEveux",
                    color: controller.currentIndex.value == 0
                        ? Colors.black
                        : const Color(0xffC4C4C4),
                  ),
                  commonButton(
                    onTap: () {
                      controller.changeIndex(1);
                    },
                    image: AppAssets.userLogo,
                    dashBoardText: "Personal",
                    color: controller.currentIndex.value == 1
                        ? Colors.black
                        : const Color(0xffC4C4C4),
                  ),
                  commonButton(
                    onTap: () {
                      controller.changeIndex(2);
                    },
                    image: AppAssets.homeLogo,
                    dashBoardText: "Home",
                    color: controller.currentIndex.value == 2
                        ? Colors.black
                        : const Color(0xffC4C4C4),
                  ),
                  commonButton(
                    onTap: () {
                      controller.changeIndex(3);
                    },
                    image: AppAssets.splashLogo,
                    dashBoardText: "Store",
                    color: controller.currentIndex.value == 3
                        ? Colors.black
                        : const Color(0xffC4C4C4),
                  ),
                  commonButton(
                    onTap: () {
                      controller.changeIndex(4);
                    },
                    image: AppAssets.account,
                    dashBoardText: "Account",
                    color: controller.currentIndex.value == 4
                        ? Colors.black
                        : const Color(0xffC4C4C4),
                  ),
                ],
              ),
            ),
          );
        }));
  }

  commonButton(
      {required GestureTapCallback onTap,
      required String image,
      required String dashBoardText,
      required Color color}) {
    return Flexible(
      child: Tooltip(
        message: dashBoardText,
        child: RawMaterialButton(
          onPressed: onTap,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: AddSize.size22,
                height: AddSize.size22,
                child: Image.asset(
                  image,
                  color: color,
                ),
              ),
              SizedBox(
                height: AddSize.size10 * .4,
              ),
              AddText(
                text: dashBoardText,
                fontSize: AddSize.font14 * .88,
                fontWeight: FontWeight.w500,
                color: color,
              )
            ],
          ),
        ),
      ),
    );
  }
}
