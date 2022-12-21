import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  RxInt numberCount = 0.obs;

  updateNumberCount(int value) {
    numberCount = value.obs;
  }
}
