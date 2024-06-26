// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:video_player/video_player.dart';

class VideoListItem extends StatefulWidget {
  final int index;
  final String videourl;
  const VideoListItem({super.key, required this.index,required this.videourl});

  @override
  State<VideoListItem> createState() => _VideoListItemState();
}
class _VideoListItemState extends State<VideoListItem> {
late VideoPlayerController _videoPlayerController;
bool isVolume=true;
bool isPlay=true;

  @override
  void initState() {
    super.initState();
    videoController(videoPath: videoPathList[widget.index]);
  }


  void videoController({required String videoPath}) {
    _videoPlayerController = VideoPlayerController.network(videoPath);
    _videoPlayerController.initialize().then((_) {
      setState(() {
        _videoPlayerController.play();
        _videoPlayerController.setVolume(isVolume ? 1.0 : 0.0);
      });
    });
  }


  void toggleVolume() {
    setState(() {
      isVolume = !isVolume;
      _videoPlayerController.setVolume(isVolume ? 1.0 : 0.0);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
      
                  child: _videoPlayerController.value.isInitialized
              ? VideoPlayer(_videoPlayerController)
              : Center(child: CircularProgressIndicator()),

      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //left side
              CircleAvatar(
                backgroundColor: Colors.black.withOpacity(0.5),
                radius: 28,
                child: IconButton(
                  onPressed: toggleVolume,
                   icon: Icon(
                     isVolume ? Icons.volume_up : Icons.volume_off,
                    size: 28,color: kwhite,)
                   )
                   ),
                   //right side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://resizing.flixster.com/CCTwucvqizkxoWsRKclAQauBRAQ=/206x305/v2/https://resizing.flixster.com/2bpFxoybigCD78l_tMP4wE7m6j4=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2IwMmU1NmEwLTM0MzQtNDYzMC1iNWExLWFiMmNiMzRkNzcwZC5qcGc="),),
                    ),
                    videActionsWidget(icon: Icons.emoji_emotions, title: 'LOL'),
                    videActionsWidget(icon: Icons.add, title: 'My List'),
                    videActionsWidget(icon: Icons.share, title: 'share'),
                    videActionsWidget(icon: Icons.play_arrow, title: 'play'),
                   
                  ],
                )
            ],
          ),
        ),
      )
      ] 
    );
  }
}

class videActionsWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const videActionsWidget({super.key,
  required this.icon,
  required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical:10,horizontal: 10 ),
      child: Column(children: [
        Icon(icon,color:kwhite,size: 28,),
        Text(title,style: TextStyle(
          color: kwhite,
          fontSize: 14
        ),),
      ],),
    );
  }
}
List<String> videoPathList = [
  'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/VolkswagenGTIReview.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
];