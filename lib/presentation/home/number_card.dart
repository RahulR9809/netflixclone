import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              height: 180,
              width: 130,
              margin: const EdgeInsets.symmetric(horizontal:10),
              decoration: const BoxDecoration(
              borderRadius: kRadius20,
              
                image:  DecorationImage(
                  fit: BoxFit.cover, 
                  image: NetworkImage(
                    "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/inside-out-2-et00384010-1705486755.jpg"
                      ),
                     
             )
              ),
            ),
          ],
        ),
        Positioned(
      top: 73,
       left: 10,
          child: BorderedText(
            strokeColor:kwhite,
            strokeWidth:3.0 ,
            child: Text(
              '${index+1}',
              style: TextStyle(
                fontSize: 110,
                color: kblackcolor,
                fontWeight: FontWeight.bold,
                decoration:TextDecoration.none,
                decorationColor:kblackcolor
                ),
                ),
          )
              ),
      ],
    );

  }
}