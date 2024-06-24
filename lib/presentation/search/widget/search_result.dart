import 'package:flutter/material.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/search/widget/title.dart';

const ImageUrl="https://assets-in.bmscdn.com/iedb/movies/images/extra/vertical_logo/mobile/thumbnail/xxlarge/dune-part-two-et00331567-1712646774.jpg";

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchTextTitle(title: 'Movies & Tv'),
        kheight,
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 1/1.4,
            children: List.generate(20, (index) {
              return MainCard();
            }),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            ImageUrl
            ),
            fit: BoxFit.cover
            ),
           borderRadius: BorderRadius.circular(10) 
      ),
    );
  }
}
