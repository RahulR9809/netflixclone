import 'package:flutter/material.dart';
import 'package:netflix/presentation/fast_laugh/video_list_item.dart';

class screenfastLaugh extends StatelessWidget {
  const screenfastLaugh({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: PageView(
        scrollDirection: Axis.vertical,
        children:List.generate(videoPathList.length, (index){
          return VideoListItem(index: index, videourl:videoPathList[index],);
        })
      )
      ),
    );
  }
}