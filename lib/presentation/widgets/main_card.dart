import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,required this.image,
  });
final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height:100,
      width: 135,
      margin: const EdgeInsets.symmetric(horizontal:10),
      decoration:  BoxDecoration(
      borderRadius: kRadius20,
      
        image:  DecorationImage(
         
          image: NetworkImage(
            imageBase+image
              ),
              fit: BoxFit.cover, 
     )
      ),
    );
  }
}