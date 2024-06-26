import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key,required this.index,required this.image});
final int index;
final String image;
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
              decoration:  BoxDecoration(
              borderRadius: kRadius20,
              
                image:  DecorationImage(
                  fit: BoxFit.cover, 
                  image: NetworkImage(
                    imageBase+image,
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