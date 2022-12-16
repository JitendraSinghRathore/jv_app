import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jv_app/routers/my_router.dart';

import '../../resources/dimensions.dart';
import '../../resources/poppins_common_text.dart';
import '../../resources/strings.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
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
          text: AppStrings.profileTitle,
          fontSize: 20,
          letterSpacing: 1,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 25,
            right: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PoppinsAddText(
                textAlign: TextAlign.start,
                text: AppStrings.name,
                fontSize: 12,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              Container(
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'enter name',
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 25,),

              const PoppinsAddText(
                textAlign: TextAlign.start,
                text: AppStrings.email,
                fontSize: 12,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              Container(
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'enter email',
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),
              SizedBox(height: 25,),
              const PoppinsAddText(
                textAlign: TextAlign.start,
                text: AppStrings.mobileNo,
                fontSize: 12,
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              Container(
                child: TextField(
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'enter mobile no',
                    hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0).copyWith(bottom: 26),
        child: ElevatedButton(
            onPressed: () {
              //showFilterButtonSheet();
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(size.width, 50),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child:PoppinsAddText(
              textAlign: TextAlign.start,
              text: AppStrings.saveChange,
              fontSize: 14,
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            )),
      ),
    );
  }
}
