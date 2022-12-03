import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../resources/app_assets.dart';
import '../resources/strings.dart';
import '../routers/my_router.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final style = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 23, right: 23),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          //alignment:new Alignment(x, y)
          children: [
            Positioned(
              child: Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(top: 172),
                  child: Image.asset(
                    AppAssets.welcomeLogo,
                    height: 182,
                    width: 182,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: 75),
              child: Positioned(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset(
                          AppAssets.welcomeLine,
                          height: 80,
                          width: 6,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.welcomeTextTitle,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            )),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(AppStrings.welcomeTextSubTitle,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.inter(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  color: Color(0xff717171),
                                ),
                              )),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 50,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {

                          },
                          child:
                          Container(
                            padding: EdgeInsets.all(2),
                            child: Text(AppStrings.professionalButton,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.black,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 7 ,
                      ),
                      Expanded(
                        child: MaterialButton(
                          minWidth: double.infinity,
                          height: 50,
                          color: Colors.black,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          onPressed: () {
                            Get.offNamed(MyRouter.onMobileLoginScreen);
                          },
                          child:
                          Container(
                            padding: EdgeInsets.all(2),
                            child: Text(AppStrings.userButton,
                                style: GoogleFonts.inter(
                                  textStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
