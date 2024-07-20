import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

final _widgetList= [
            const SmartDownload(),
           Section2(),
            const Section3()
            ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50), 
          child: AppbarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (ctx,index)=>_widgetList[index],
           separatorBuilder: (ctx,index)=>const SizedBox(height: 25 ,),
            itemCount:_widgetList.length)
        );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List<String> imageList = [
    "https://resizing.flixster.com/PMSe3EQVK3Z89vo1tYGC-5PAxrE=/206x305/v2/https://resizing.flixster.com/P3ITKQPm33gw4K73O9DYCOfyZ4E=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzQ1Zjg4NDFhLWMxY2EtNDU3NC04OTNmLTQ4MTJiMzc3Y2EwZC5qcGc=",
    "https://resizing.flixster.com/CCTwucvqizkxoWsRKclAQauBRAQ=/206x305/v2/https://resizing.flixster.com/2bpFxoybigCD78l_tMP4wE7m6j4=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2IwMmU1NmEwLTM0MzQtNDYzMC1iNWExLWFiMmNiMzRkNzcwZC5qcGc=",
    "https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/dune-part-two-et00331567-1712646774.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhite, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will download a personalised selection of\nmovies and shows for you, so there's\n always something to watch on your\ndevice",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize:15,fontWeight: FontWeight.w400,
          color:Colors.grey,
          ),
        ),
        kheight, 
        SizedBox(
          width: size.width,
          height: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * 0.35,
                backgroundColor: Colors.grey.withOpacity(0.5),
              ),
              DownloadsimageWidgets(  
                imageList: imageList[0],
                margin: const EdgeInsets.only(left: 170,top: 25),
                size: Size(size.width * 0.35, size.height * 0.22),
                angle: 25,   
              ),   
              DownloadsimageWidgets(     
                imageList: imageList[1],  
                margin: const EdgeInsets.only(right: 170,top: 25),
                size: Size(size.width * 0.35, size.height * 0.22),
                angle: -25, 
              ),  
              DownloadsimageWidgets(   
                imageList: imageList[2],    
                radius: 10,
                margin: const EdgeInsets.only(top: 2),
                size: Size(size.width * 0.40, size.height * 0.27),
              ),
            ],
          ), 
        ),
      ], 
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            height: 46,
            color: kbuttoncolorblue,
            onPressed: () {},
            child: const Text(
              'set up',
              style: TextStyle(
                  color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ), 
        kheight, 
        MaterialButton( 
          height: 38,  
          color: kbuttoncolorwhite,
          onPressed: () {},
          child: const Text(
            'see what you can download',
            style: TextStyle(
                color: kblackcolor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}

class SmartDownload extends StatelessWidget {
  const SmartDownload({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        kwidth,
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text('Smart Download'),
      ],
    );
  }
}

class DownloadsimageWidgets extends StatelessWidget {
  const DownloadsimageWidgets({
    super.key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    this.radius = 10,
  });

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(imageList))),
          ),
        ),
      ),
    );
  }
}
