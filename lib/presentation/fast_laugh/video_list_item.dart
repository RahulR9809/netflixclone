import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
      
        color: Colors.accents[index % Colors.accents.length],
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
                  onPressed: (){},
                   icon: Icon(Icons.volume_off,size: 28,color: kwhite,)
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