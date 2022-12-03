import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:jv_app/resources/app_assets.dart';

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
                      children: [
                        const Text(
                          "Use current location",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),),
                        const SizedBox(height: 4,),
                        const Text(
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
                          children: [
                            const Text(
                              "Use current location",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500
                              ),),
                            const SizedBox(height: 4,),
                            const Text(
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
    return Scaffold(
        backgroundColor: Colors.white,
        key: controller.scaffoldKey,
        // drawer: const DrawerScreen(),
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
        body: Obx(() {
          return IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              JEveuxScreen(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
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
