import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SingleChildScrollView(
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
    );
  }
}
