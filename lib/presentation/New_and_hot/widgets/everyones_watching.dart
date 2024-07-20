
import 'package:flutter/material.dart';
import 'package:netflix/application/model/movie_model.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/home/custom_button_widget.dart';
import 'package:netflix/presentation/widgets/video_widget.dart';

class EveryonesWachingWidget extends StatelessWidget {
  const EveryonesWachingWidget({
    super.key,required this.movies,required this.index,required this.everyone
  });
final List movies;
 final int index;
 final Movie everyone;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight,
         Text(
          everyone.title,
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        kheight,
         Text(
          everyone.overview,
          style: const TextStyle(color: Colors.grey),
        ),
        kheight50,
        VideoWidget(image:movies[index].imagepath,),
        kheight,
        const Row(
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
