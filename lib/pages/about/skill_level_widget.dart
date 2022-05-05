import 'package:flutter/material.dart';

import 'package:portfolio_wec/responsive.dart';

class SkillLevelWidget extends StatelessWidget {
  const SkillLevelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _width = Responsive.isMobile(context)
        ? MediaQuery.of(context).size.width * 0.60
        : MediaQuery.of(context).size.width * 0.38;

    print(_width);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SkillLevel(
          width: _width,
          skillLevel: 95,
          title: "Flutter",
        ),
        SizedBox(
          height: 10,
        ),
        _SkillLevel(
          width: _width,
          skillLevel: 95,
          title: "Dart",
        ),
        SizedBox(
          height: 10,
        ),
        _SkillLevel(
          width: _width,
          skillLevel: 80,
          title: "Node Js",
        ),
        SizedBox(
          height: 10,
        ),
        _SkillLevel(
          width: _width,
          skillLevel: 85,
          title: "Python",
        ),
      ],
    );
  }
}

class _SkillLevel extends StatelessWidget {
  const _SkillLevel({
    Key? key,
    required this.width,
    required this.title,
    required this.skillLevel,
  }) : super(key: key);

  final double width;
  final String title;
  final double skillLevel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "$title",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                Text(
                  "$skillLevel%",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: width,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: width,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    width: width * skillLevel * 0.01,
                    height: 5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.pink,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
