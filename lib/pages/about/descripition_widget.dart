import 'package:flutter/material.dart';
import 'package:portfolio_wec/responsive.dart';

class DescripitionWidget extends StatelessWidget {
  const DescripitionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About Udesh",
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Colors.white,
              ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Flutter Developer",
          style: Theme.of(context).textTheme.headline5?.copyWith(
                color: Colors.pink,
              ),
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          width: Responsive.isMobile(context)
              ? MediaQuery.of(context).size.width * 0.8
              : MediaQuery.of(context).size.width * 0.4,
          child: Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet. Dolore magna aliquam erat volutpat. Dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet."),
        )
      ],
    );
  }
}
