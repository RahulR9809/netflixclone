
import 'package:flutter/material.dart';
import 'package:netflix/presentation/widgets/main_card.dart';
import 'package:netflix/presentation/widgets/main_titile.dart';

class MainTitleCard extends StatelessWidget {
  const MainTitleCard({
    super.key,required this.title
  });
 final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mainTitle(
          title: title
          ),
         
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
          children:List.generate(10, (index)=>const HomeCard()),
          ),
        )
      ]
    );
  }
}

