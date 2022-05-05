import 'package:flutter/material.dart';
import 'package:portfolio_wec/pages/about/about.dart';
import 'package:portfolio_wec/responsive.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Responsive.isMobile(context)) {
      return Column(
        // mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DescripitionWidget(),
          SizedBox(
            height: 20,
          ),
          SkillLevelWidget(),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DescripitionWidget(),
          SizedBox(
            width: 20,
          ),
          SkillLevelWidget(),
        ],
      );
    }
  }
}
