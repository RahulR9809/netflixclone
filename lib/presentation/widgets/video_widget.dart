
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 250,
           child: Image.network(imageBase+image,fit: BoxFit.cover,),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            radius: 22,
            backgroundColor: Colors.black.withOpacity(0.5),
            child: const Icon(
              Icons.volume_off,
              color: kwhite,
              size: 20,
            ),
          ),
        )
      ],
    );
  }
}
