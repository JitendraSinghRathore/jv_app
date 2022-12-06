import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../resources/app_assets.dart';
import '../resources/strings.dart';
import 'package:country_calling_code_picker/picker.dart';

import '../routers/my_router.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  Country? _selectedCountry;
  final style = TextStyle(fontSize: 15, fontWeight: FontWeight.w400);

  @override
  void initState() {
    initCountry();
    super.initState();
  }

  void initCountry() async {
    final country = await getDefaultCountry(context);
    setState(() {
      _selectedCountry = country as Country?;
    });
  }

  @override
  Widget build(BuildContext context) {

    final country = _selectedCountry;
    var deviceWidth = MediaQuery.of(context).size.width;
    var deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text(AppStrings.appVerificationOtp,
          textAlign: TextAlign.center,
            style: GoogleFonts.josefinSans(
              textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize:23,
                color: Colors.black,
              ),
            )
            )),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.black,),
          onPressed: () {

          },
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 0.1,top: 100,right: 0.1),
              height: deviceHeight,
              width: deviceWidth,
              child: Container(

                  child: Image.asset(
                    AppAssets.verification,
                    height: deviceHeight,
                    fit: BoxFit.fill,

                    width: deviceWidth,
                  ))
            ),
            SingleChildScrollView(child:

              Container(
                  padding: const EdgeInsets.only(left: 40, right: 25,top: 155),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                            AppStrings.conformVerificationOtp,
                            textAlign: TextAlign.center,

                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(

                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            )),
                      ),
                      SizedBox(height: 55,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                            AppStrings.titleVerificationOtp,
                            textAlign: TextAlign.center,

                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            )),
                      ),
                      SizedBox(height: 50,),
                      Container(

                            child: PinCodeTextField(appContext: context,
                              length: 4,
                              obscureText: false,
                              animationType: AnimationType.fade,
                              pinTheme: PinTheme(
                                shape: PinCodeFieldShape.circle,
                                fieldHeight: 80,
                                fieldWidth: 50,
                                activeColor: Colors.grey,
                                inactiveColor: Colors.grey,
                                inactiveFillColor: Colors.grey,
                                selectedColor: Colors.grey,
                                selectedFillColor:Colors.white,

                                disabledColor: Colors.grey,
                                activeFillColor: Colors.grey,
                              ),
                              animationDuration: Duration(milliseconds: 300),
                              enableActiveFill: true,
                              // errorAnimationController: errorController,
                              //controller: textEditingController,
                              onCompleted: (v) {
                                print("Completed");
                              },
                              onChanged: (value) {
                                print(value);
                                setState(() {
                                  // currentText = value;
                                });
                              },
                              beforeTextPaste: (text) {
                                print("Allowing to paste $text");
                                //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                return true;
                              },
                            ),
                          ),
                      SizedBox(height: 50,),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                            AppStrings.resendVerificationOtp.toUpperCase() ,
                            textAlign: TextAlign.center,

                            style: GoogleFonts.roboto(
                              textStyle: const TextStyle(
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17,
                                  color: Colors.white
                              ),
                            )),
                      ),
                      SizedBox(height: 40,),
                      MaterialButton(
                        minWidth: MediaQuery.of(context).size.width,
                        height: 55,
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          Get.offNamed(MyRouter.bottomNavBarHomeScreen);
                        },
                        child:
                        Container(
                          padding: EdgeInsets.all(2),
                          child: Text(AppStrings.verifyVerificationOtp.toUpperCase(),
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      )
                    ],
                  )
              ),
            ),


          ],
        ),
      ),
    );
  }
}


