import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_wec/constants/colors.dart';
import 'package:velocity_x/velocity_x.dart';

import '../controller/hover_controller.dart';

class UrlIcons extends GetView<HoverController> {
  UrlIcons({
    Key? key,
    this.isHover,
    required this.onHover,
    required this.onEnter,
    required this.onExit,
    this.ontaps,
    this.iconData,
  }) : super(key: key);

  late bool? isHover;
  late IconData? iconData;
  final Function(PointerHoverEvent event) onHover;
  final Function(PointerEnterEvent event) onEnter;
  final Function(PointerExitEvent event) onExit;
  // final Void Function()? onTaps;
  Future<void> Function()? ontaps;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontaps,
      child: MouseRegion(
        onHover: (event) {
          onHover(event);
        },
        onEnter: (event) {
          onEnter(event);
        },
        onExit: (event) {
          onExit(event);
        },
        child: Icon(
          iconData,
          size: 30,
          color: isHover != true ? Colors.pink : Colors.black,
        )
            .box
            .color(
              isHover != true
                  ? ColorTheme.forgroundColor
                  : ColorTheme.textcolor,
            )
            .border(
              width: 1.0,
              color: Colors.white,
            )
            .p16
            .roundedFull
            .shadow3xl
            .margin(
              EdgeInsets.all(5.0),
            )
            .makeCentered(),
      ),
    );
  }
}
