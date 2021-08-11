import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:portfolio_wec/colors.dart';
import 'package:portfolio_wec/controller.dart';
import 'package:portfolio_wec/responsive.dart';
import 'package:url_launcher/link.dart';
// import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  Vx.setPathUrlStrategy();
  Get.put(HoverController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.aBeeZeeTextTheme(),
      ),
      title: 'Material App',
      home: Scaffold(body: SafeArea(child: Home())),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = Get.put(HoverController());
  @override
  void didChangeDependencies() {
    controller.cacheImage(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Responsive.isMobile(context))
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/udesh.jpg',
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
              ).box.roundedFull.shadow5xl.make(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    "Dart".text.white.size(40.0).extraBold.make(),
                    50.heightBox,
                    'Hi There 🥺'.text.xl5.capitalize.white.make(),
                    30.heightBox,
                    Text(
                      "I'm Udesh Sharma",
                      style: TextStyle(shadows: [
                        Shadow(
                          blurRadius: 10,
                        ),
                      ]),
                    )
                        .text
                        .size(Responsive.isMobile(context) ? 40 : 50)
                        .extraBold
                        .fade
                        .white
                        .make(),
                    30.heightBox,
                    Container(
                      width: Responsive.isMobile(context)
                          ? MediaQuery.of(context).size.width * 0.8
                          : MediaQuery.of(context).size.width * 0.4,
                      child: SelectableText(
                        "I’m a Software Developer based in New Delhi, India.I specialize in creating high quality websites & webapps made with 💓 of modern web technologies.",
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        style: TextStyle(
                          // shadows: ,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        maxLines: Responsive.isMobile(context) ? 5 : 3,
                      ),
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Link(
                          uri: Uri(
                            scheme: "mailto",
                            path: 'udesh9506@outlook.com',
                          ),
                          target: LinkTarget.defaultTarget,
                          builder: (contexr, ontapes) => Obx(
                            () => UrlIcons(
                              key: ValueKey('mail'),
                              ontaps: ontapes,
                              iconData: Icons.mail,
                              isHover: controller.isHover1.value,
                              onEnter: (event) {
                                controller.isHover1.value = true;
                              },
                              onHover: (event) {
                                controller.isHover1.value = true;
                              },
                              onExit: (event) {
                                controller.isHover1.value = false;
                              },
                            ),
                          ),
                        ),
                        20.widthBox,
                        Link(
                          uri: Uri.parse(
                            'https://github.com/udeshsharma',
                          ),
                          target: LinkTarget.defaultTarget,
                          builder: (contexr, ontapes) => Obx(
                            () => UrlIcons(
                              key: ValueKey('gits'),
                              ontaps: ontapes,
                              iconData: FontAwesomeIcons.github,
                              isHover: controller.isHover3.value,
                              onEnter: (event) {
                                controller.isHover3.value = true;
                              },
                              onHover: (event) {
                                controller.isHover3.value = true;
                              },
                              onExit: (event) {
                                controller.isHover3.value = false;
                              },
                            ),
                          ),
                        ),
                        20.widthBox,
                        if (!Responsive.isMobile(context))
                          Link(
                            uri: Uri.parse(
                              '',
                            ),
                            target: LinkTarget.blank,
                            builder: (contexr, ontapes) => Obx(
                              () => UrlIcons(
                                ontaps: ontapes,
                                key: ValueKey('mediumM'),
                                iconData: FontAwesomeIcons.mediumM,
                                isHover: controller.isHover2.value,
                                onEnter: (event) {
                                  controller.isHover2.value = true;
                                },
                                onHover: (event) {
                                  controller.isHover2.value = true;
                                },
                                onExit: (event) {
                                  controller.isHover2.value = false;
                                },
                              ),
                            ),
                          ),
                        20.widthBox,
                        Link(
                          uri: Uri.parse(
                              'https://instagram.com/iamudesharma?utm_medium=copy_link'),
                          target: LinkTarget.defaultTarget,
                          builder: (contexr, ontapes) => Obx(
                            () => UrlIcons(
                              key: ValueKey('insta'),
                              ontaps: ontapes,
                              iconData: FontAwesomeIcons.instagram,
                              isHover: controller.isHover4.value,
                              onEnter: (event) {
                                controller.isHover4.value = true;
                              },
                              onHover: (event) {
                                controller.isHover4.value = true;
                              },
                              onExit: (event) {
                                controller.isHover4.value = false;
                              },
                            ),
                          ),
                        ),
                        20.widthBox,
                        Link(
                          uri: Uri.parse('https://twitter.com/iamudesharma'),
                          target: LinkTarget.blank,
                          builder: (contexr, ontapes) => Obx(
                            () => UrlIcons(
                              key: ValueKey('twitter'),
                              ontaps: ontapes,
                              iconData: FontAwesomeIcons.twitter,
                              isHover: controller.isHover5.value,
                              onEnter: (event) {
                                controller.isHover5.value = true;
                              },
                              onHover: (event) {
                                controller.isHover5.value = true;
                              },
                              onExit: (event) {
                                controller.isHover5.value = false;
                              },
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                if (!Responsive.isMobile(context))
                  Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 600,
                    child: controller.image,
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}

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
  @override
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
            color: isHover != true ? Colors.white : Colors.black,
          )
              .box
              .color(
                isHover != true ? Colorse.forgroundColor : Colorse.textcolor,
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
              .makeCentered()),
    );
  }
}
