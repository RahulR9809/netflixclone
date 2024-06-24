import 'package:flutter/material.dart';
import 'package:netflix/presentation/home/number_card.dart';
import 'package:netflix/presentation/widgets/main_titile.dart';
class NumberTitleCard extends StatelessWidget {
  const NumberTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const mainTitle(title: 'Top 10 Tv Shows in India Today'),
      LimitedBox(
        maxHeight: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: List.generate(
              10,
              (index) => NumberCard(
                    index: index,
                  )),
        ),
      )
    ]);
  }
}
