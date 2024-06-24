import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/home/custom_ButtonWidget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(kmainImage), fit: BoxFit.cover))),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButtomWidget(
                  text: 'My List',
                  icon: Icons.add,
                ),
                _playButton(),
                CustomButtomWidget(
                  text: 'info',
                  icon: Icons.info,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kwhite),
        ),
        icon: const Icon(
          Icons.play_arrow,
          color: kblackcolor,
          size: 25,
        ),
        label: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Play',
            style: TextStyle(fontSize: 20, color: kblackcolor),
          ),
        ));
  }
}
