import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_wec/responsive.dart';
import 'package:url_launcher/link.dart';
import 'package:velocity_x/velocity_x.dart';

class ProjectIcon extends StatelessWidget {
  const ProjectIcon({
    Key? key,
    required this.url,
    required this.image,
    required this.title,
    required this.projectId,
  }) : super(key: key);

  final ImageProvider image;
  final int projectId;
  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project  $projectId',
            style: GoogleFonts.monoton(
              color: Colors.white,
              fontSize: 50,
            ),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              '$title'
                  .text
                  .white
                  .extraBold
                  .size(
                    Responsive.isMobile(context) ? 40 : 50,
                  )
                  .make()
            ],
          ),
          20.heightBox,
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              // height: MediaQuery.of(context).size.height * 0.8,
              child: Link(
                uri: Uri.parse(url),
                builder: (context, onPress) => InkWell(
                  mouseCursor: SystemMouseCursors.click,
                  onTap: onPress,
                  child: Image(
                    image: image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Link(
              target: LinkTarget.blank,
              uri: Uri.parse(
                url,
              ),
              builder: (context, onpress) => ElevatedButton(
                onPressed: onpress,
                child: Text(
                  'Go to Website',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
