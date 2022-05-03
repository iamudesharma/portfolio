import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_wec/controller/hover_controller.dart';
import 'package:velocity_x/velocity_x.dart';

import 'app.dart';

void main() {
  Vx.setPathUrlStrategy();
  Get.put(HoverController());
  runApp(MyApp());
}



