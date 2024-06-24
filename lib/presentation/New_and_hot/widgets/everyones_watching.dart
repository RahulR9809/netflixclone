
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/home/custom_ButtonWidget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWachingWidget extends StatelessWidget {
  const EveryonesWachingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
        Text(
          "Friends",
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        kheight,
        Text(
          "This hit sitcom follows the merry misadventures of six\n20-something pals as they navigate the pitfalls if work,life and love in 1990s Manhattan",
          style: TextStyle(color: Colors.grey),
        ),
        kheight50,
        VideoWidget(),
        kheight,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              CustomButtomWidget(
                          icon: Icons.share,
                          text: "Share",
                          iconSize: 25,
                          textSize: 16,
                        ),
                        kwidth,
                          CustomButtomWidget(
                          icon: Icons.add,
                          text: "My List",
                          iconSize: 25,
                          textSize: 16,
                        ),
                        kwidth,
                          CustomButtomWidget(
                          icon: Icons.play_arrow,
                          text: "play",
                          iconSize: 25,
                          textSize: 16,
                        ),
                        kwidth
          ],
        )
      ],
    );
  }
}
