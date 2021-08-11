// import 'dart:js';s

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HoverController extends GetxController {
  late Image image;
  Rx<bool> isHover1 = false.obs;
  Rx<bool> isHover2 = false.obs;
  Rx<bool> isHover3 = false.obs;
  Rx<bool> isHover4 = false.obs;
  Rx<bool> isHover5 = false.obs;

  @override
  void onInit() {
    super.onInit();
    image = Image.asset(
      "assets/udesh.jpg",
      fit: BoxFit.fitWidth,
    );
  }

  @override
  void onReady() {
    super.onReady();
  }

  void cacheImage(BuildContext context) {
    precacheImage(image.image, context);
  }
}
