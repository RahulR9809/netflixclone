import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/application/model/movie_model.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';

import 'package:netflix/presentation/search/widget/title.dart';

const image =
    'https://media.themoviedb.org/t/p/w533_and_h300_bestv2/4woSOUD0equAYzvwhWBHIJDCM88.jpg';

class SearchIdle extends StatelessWidget {
  final List<Movie> result;
  const SearchIdle({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(
          title: 'Top Searches',
        ),
        kheight,
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              if (index < result.length) {
                return TopSearchItemTile(
                  nameMovie: result[index].title,
                  imageurl: result[index].imagepath,
                );
              } else {
               
                return const SizedBox.shrink();
              }
            },
            separatorBuilder: (ctx, index) => const SizedBox(
              height: 20,
            ),
            itemCount: result.length, 
          ),
        ),
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String imageurl;
  final String nameMovie;
  const TopSearchItemTile(
      {super.key, required this.imageurl, required this.nameMovie});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.38,
          height: 90,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageBase + imageurl),
                  fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Text(
          nameMovie,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        )),
        const CircleAvatar(
          backgroundColor: Colors.white,
          radius: 25,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 23,
            child: Center(
                child: Icon(
              CupertinoIcons.play_fill,
              color: Colors.white,
            )),
          ),
        )
      ],
    );
  }
}