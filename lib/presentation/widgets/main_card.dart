import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constsans.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:100,
      width: 135,
      margin: const EdgeInsets.symmetric(horizontal:10),
      decoration: const BoxDecoration(
      borderRadius: kRadius20,
      
        image:  DecorationImage(
         
          image: NetworkImage(
            "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/inside-out-2-et00384010-1705486755.jpg"
              ),
              fit: BoxFit.cover, 
     )
      ),
    );
  }
}