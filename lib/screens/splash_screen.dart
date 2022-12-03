import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jv_app/routers/my_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../resources/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () async {
      SharedPreferences pref = await SharedPreferences.getInstance();
      Get.offNamed(MyRouter.onBoardingScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Flexible(child: SizedBox(
                  width: deviceWidth * 1,
                  height: deviceHeight * 1,
                  child: Image.asset(
                    AppAssets.splashWhiteBackground,
                    fit: BoxFit.fill,
                  )),),
              Flexible(child: SizedBox(
                  width: deviceWidth * 1,
                  height: deviceHeight * 1,
                  child: Image.asset(
                    AppAssets.splashBlackBackground,
                    fit: BoxFit.fill,
                  )),)


            ],

          ),

          Positioned(
              top: 30,
              bottom: 30,
              right: 60,
              left: 60,
              child: Image.asset(
                AppAssets.splashLogo,
                height: 300,
                width: 300,
              ))
        ],
      ),
    );
  }
}
