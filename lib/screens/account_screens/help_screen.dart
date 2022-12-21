import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jv_app/resources/app_assets.dart';
import 'package:jv_app/resources/poppins_common_text.dart';
import 'package:jv_app/resources/strings.dart';

import '../../routers/my_router.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2EBFF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF2EBFF),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.adaptive.arrow_back,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const PoppinsAddText(
          textAlign: TextAlign.start,
          text: AppStrings.supportTitle,
          fontSize: 20,
          letterSpacing: 1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/headphone.png',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 34, right: 34, top: 16),
              child: PoppinsAddText(
                textAlign: TextAlign.start,
                text: AppStrings.supportSubTitle,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: ()
              {
                //Get.toNamed(MyRouter.supportChat);

                Get.toNamed(MyRouter.editProfileScreen);

              },child: Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 75,
              // height: 54,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),

              child: Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppAssets.messageSupport,
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: PoppinsAddText(
                      textAlign: TextAlign.center,
                      text: AppStrings.chatSupport,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Container(

                    height: 40,
                    width: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,

                            ),
                          ],
                          borderRadius: BorderRadius.circular(50),

                        ),

                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                child: Image.asset(AppAssets.forwordAccount),
                              ),
                            ],
                          ),
                        )),
                  ),

                ],
              ),
            ),
            ),


            const SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              height: 75,
              // height: 54,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),

              child: Row(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppAssets.callSupport,
                      width: 25,
                      height: 25,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: PoppinsAddText(
                      textAlign: TextAlign.center,
                      text: AppStrings.callSupport,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Container(

                    height: 40,
                    width: 40,
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white,

                            ),
                          ],
                          borderRadius: BorderRadius.circular(50),

                        ),

                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                child: Image.asset(AppAssets.forwordAccount),
                              ),
                            ],
                          ),
                        )),
                  ),

                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 60,
              width: 60,
              child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12
                      ),
                    ],
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(

                          child: Icon(Icons.mail_outline_sharp,),
                        ),
                      ],
                    ),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            PoppinsAddText(
              textAlign: TextAlign.start,
              text: AppStrings.mail1,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),

            PoppinsAddText(
              textAlign: TextAlign.start,
              text: AppStrings.mail2,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),

          ],
        ),
      ),
    );
  }
}
