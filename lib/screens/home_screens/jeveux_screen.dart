import 'dart:math';
import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jv_app/resources/app_assets.dart';

import '../../resources/app_theme.dart';
import '../../resources/common_text.dart';
import '../../resources/dimensions.dart';
import '../widgets/row_categories.dart';
import '../widgets/row_categories1.dart';

class JEveuxScreen extends StatefulWidget {
  const JEveuxScreen({Key? key}) : super(key: key);

  @override
  State<JEveuxScreen> createState() => _JEveuxScreenState();
}

class _JEveuxScreenState extends State<JEveuxScreen> {
  RxInt controlValue = 0.obs;

  showFilterButtonSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        isDismissible: true,
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * .8,
          maxHeight: MediaQuery.of(context).size.height * .82,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (context) => Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.0),
              topLeft: Radius.circular(40.0),
            ),
          ),
          padding: EdgeInsets.only(
              top: AddSize.padding14,
              left: AddSize.padding20,
              right: AddSize.padding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 6,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20)
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20,),
              const Text("Select a location",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),),
              const SizedBox(height: 16,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    hintText: "Search for area, street name",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade700,
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 14)),
              ),
              const SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.my_location,color: Colors.black,),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Use current location",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),
                        SizedBox(height: 4,),
                        Text(
                          "Ayodhya Nagar Extension, Ayodhya Bypass",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400
                          ),),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Icon(Icons.adaptive.arrow_forward)
                ],
              ),
              const SizedBox(height: 16,),
              const Divider(),
              const SizedBox(height: 16,),
              const Text("Saved addresses",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),),
              const SizedBox(height: 20,),
              Expanded(
                child: ListView.separated(
                    separatorBuilder:(_,__)=>  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Divider(),
                    ),
                    itemCount: 3,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context,index){
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Icon(Icons.my_location,color: Colors.black,),
                          const SizedBox(width: 16,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Home",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500
                                  ),),
                                SizedBox(height: 4,),
                                Text(
                                  "Ayodhya Nagar Extension, Ayodhya Bypass",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400
                                  ),),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16,),
                          Icon(Icons.adaptive.arrow_forward)
                        ],
                      );
                    }),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AddText(
              text: "Hi, Harry",
              fontSize: 16,
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
            const SizedBox(height: 2,),
            InkWell(
              onTap: (){
                showFilterButtonSheet();
              },
              child: Row(
                children: const [
                  FaIcon(FontAwesomeIcons.locationDot,color: Colors.black,size: 14,),
                  Expanded(
                      child: Text(" Ayodhya Nagar, Bhopal",style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),)
                  )
                ],
              ),
            )
          ],
        ),
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF5C443)
              ),
              height: 45,
              width: 45,
              padding: const EdgeInsets.all(2),
              child: Image.asset(AppAssets.harry),
            ),
          ],
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffF3F3F3)
                ),
                margin: const EdgeInsets.only(right: 14),
                height: 45,
                width: 45,
                padding: const EdgeInsets.all(2),
                alignment: Alignment.center,
                child: Badge(
                    animationType: BadgeAnimationType.fade,
                    animationDuration: const Duration(seconds: 1),
                    position: const BadgePosition(top: -4,end: 2),
                    showBadge: true,
                    child: const FaIcon(FontAwesomeIcons.solidBell,color: Colors.black,size: 22,)),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(

        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        hintText: "Search for services",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade700,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 14)),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomCategory(titleText: "Self Care Services"),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomCategory(titleText: "Home care services"),
                  const SizedBox(
                    height: 16,
                  ),
                  const CustomCategory(titleText: "Construction services"),
                  const SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.22,
              width: double.maxFinite,
              child: CarouselSlider(
                // autoplay: true,
                // outer: false,
                // autoplayDelay: 5000,
                // autoplayDisableOnInteraction: true,
                // itemBuilder: (BuildContext context, int index) {
                //   return ;
                // },
                items: List.generate(
                    4,
                    (index) => GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: CachedNetworkImage(
                                  width: screenSize.width,
                                  imageUrl:
                                      "https://files.myglamm.com/site-images/original/IDFC-offer-banner-660x330_5.png",
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => const SizedBox(),
                                  errorWidget: (context, url, error) =>
                                      const SizedBox()),
                            ),
                          ),
                        )),
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    pauseAutoPlayOnTouch: true,
                    viewportFraction: .92,
                    onPageChanged: (value, _) {
                      controlValue.value = value;
                    }),
                // itemCount: 10,
                // pagination: const SwiperPagination(),
                // control: const SwiperControl(size: 0), // remove arrows
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  4,
                  (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2),
                        child: Obx(() {
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: controlValue.value == index
                                  ? Colors.black
                                  : const Color(0xffE4D6FF),
                            ),
                            height: 8,
                            width: controlValue.value == index ? 32 : 8,
                          );
                        }),
                      )),
            ),
            const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomCategoryBelowText(titleText: "Construction services"),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
