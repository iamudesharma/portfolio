import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_wec/controller/hover_controller.dart';
import 'package:portfolio_wec/responsive.dart';

import '../widgets/url_widgets.dart';
import 'about/about.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _controller = PageController(viewportFraction: 0.9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return _widgets[index];
        },
        itemCount: 4,
        pageSnapping: true,
        controller: _controller,
        scrollDirection: Axis.vertical,
      ),
    );
  }

  List<Widget> _widgets = [
    Center(
      child: ProfilePage(),
    ),
    MyPage(),
    ProfilePage(),
    Center(child: Text('Page 1')),
  ];
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final controller = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SelectableText("Whats I Do",
                      style: Theme.of(context).textTheme.headline5),
                  if (Responsive.isMobile(context))
                    Column(
                      children: [
                        WhatIDoCardColumn(),
                        WhatIDoCardColumn(),
                        WhatIDoCardColumn(),
                      ],
                    ),
                  if (!Responsive.isMobile(context))
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        WhatIDoCardRow(),
                        WhatIDoCardRow(),
                        WhatIDoCardRow(),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(color: Colors.black),
                child: AboutPage()),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: Image.asset(
                "assets/home-bg.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Center(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SelectableText(
                        "Simple Profile Page",
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.all(
                              10.0,
                            ),
                            side: BorderSide(
                              color: Colors.pink.shade600,
                              width: 2.0,
                            )),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(
                            15,
                          ),
                          child: SelectableText(
                            "Udesh Sharma",
                            style:
                                Theme.of(context).textTheme.headline4?.copyWith(
                                      color: Colors.pink.shade600,
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: 1.5,
                                    ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        child: DefaultTextStyle(
                          style:
                              Theme.of(context).textTheme.headline4!.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1.4,
                                  ),
                          child: Center(
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TyperAnimatedText(
                                  "Flutter Developer",
                                ),
                                TyperAnimatedText(
                                  "Project Leader",
                                ),
                                TyperAnimatedText(
                                  "UI and UX Designer",
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: SelectableText(
                          "I’m a Software Developer based in New Delhi, India.I specialize in creating high quality websites & webapps made with 💓 of modern web technologies.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            primary: MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors.pink;
                              } else {
                                return Colors.pink;
                              }
                            }),
                            backgroundColor:
                                MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors.pink;
                              } else {
                                return Colors.transparent;
                              }
                            }),
                            onSurface: MaterialStateColor.resolveWith((states) {
                              if (states.contains(MaterialState.hovered)) {
                                return Colors.pink;
                              } else {
                                return Colors.pink;
                              }
                            }),
                            side: BorderSide(width: 1.5, color: Colors.white)),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("Get Started",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1.5,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WhatIDoCardColumn extends StatelessWidget {
  WhatIDoCardColumn({Key? key}) : super(key: key);
  final controller = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => UrlIcons(
            key: ValueKey('mail'),
            ontaps: () async {},
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
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Resonse",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: SelectableText(
                "Lavish CSS Template is designed by templatemo. Download, edit and use this layout.",
              ),
            )
          ],
        )
      ],
    );
  }
}

class WhatIDoCardRow extends StatelessWidget {
  WhatIDoCardRow({Key? key}) : super(key: key);
  final controller = Get.put(HoverController());

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Obx(
          () => UrlIcons(
            key: ValueKey('mail'),
            ontaps: () async {},
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
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Resonse",
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.24,
              child: SelectableText(
                "Lavish CSS Template is designed by templatemo. Download, edit and use this layout.",
              ),
            )
          ],
        )
      ],
    );
  }
}
