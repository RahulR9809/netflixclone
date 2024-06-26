
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/application/model/movie_model.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/search/widget/title.dart';

final imageurl =
    'https://image.tmdb.org/t/p/w600_and_h900_bestv2/sK6Nr6KNUA4WlAHyNBTioz9FK87.jpg';

class Searchresultresult extends StatelessWidget {
  final List<Movie>result;
  const Searchresultresult({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        searchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                shrinkWrap: true,
                childAspectRatio: 1.1/1.6,
                children: List.generate(result.length, (index) {
                  return MainMovieCrad(url: result[index].imagepath,);
                })))
      ],
    );
  }
}

class MainMovieCrad extends StatelessWidget {
  final String? url;
  const MainMovieCrad({Key? key,  this.url}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(imageBase+url!), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(7)),
    );
  }
}
