
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/home/custom_ButtonWidget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class ComingSoonwidget extends StatelessWidget {
  const ComingSoonwidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 50,
            height: 450,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('FEB',
                    style:
                        TextStyle(fontSize: 18, color: kwhite.withOpacity(0.5))),
                Text(
                  '11',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                VideoWidget(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "tall girl",
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        CustomButtomWidget(
                          icon: Icons.circle_notifications,
                          text: "Remind me",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kwidth,
                        CustomButtomWidget(
                          icon: Icons.info,
                          text: "info",
                          iconSize: 20,
                          textSize: 12,
                        ),
                        kwidth
                      ],
                    ),
                  ],
                ),
                Text("Coming on Friday"),
                kheight,
                Text(
                  "Tall Girl Two",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  "If the style property is true, the style will be merged with the closest enclosing DefaultTextStyleOtherwise, the style will replace the closest enclosing DefaultTextStyle",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
