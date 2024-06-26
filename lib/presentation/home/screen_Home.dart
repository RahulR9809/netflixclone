import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/application/controller/controller_movie.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/home/background_Card.dart';
import 'package:netflix/presentation/home/number_Title_card.dart';
import 'package:netflix/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollnotifier = ValueNotifier(true);

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  List nowplaying=[];
  List toprated=[];
  List popular=[];
  List upcoming=[];
  List clone=[];
  Future getAllmovies()async{
       popular=await movieServies.getpopularMovies();
    nowplaying=await movieServies.getNowplayingMovies();
    upcoming=await movieServies.getUpcomingMovies(); 
    clone=await movieServies.getNowplayingMovies();
    setState(() {});
  }
  @override
  void initState() {
    getAllmovies();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollnotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (Notification) {
                  final ScrollDirection direction = Notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollnotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollnotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        BackgroundCard(),
                        MainTitleCard(
                          title: 'Released in the past year', 
                          movies: upcoming,
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'Trending Now',
                           movies: popular,
                        ),
                        kheight,
                        NumberTitleCard(movies: upcoming, ),
                        kheight,
                        MainTitleCard(
                          title: 'Tense Dramas',
                           movies:upcoming,
                        ),
                        kheight,
                        MainTitleCard(
                          title: 'South Indian cinema',
                           movies:clone,
                        ),
                        kheight,
                      ],
                    ),
                    scrollnotifier.value == true
                        ? AnimatedContainer(
                            duration: Duration(milliseconds: 1000),
                            width: double.infinity,
                            height: 95,
                            // color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          10.0), 
                                      child: const Image(
                                        image: NetworkImage(
                                         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGZhYUrmk6vDmi1-Pj7oI-HzTpQDCi9-IFTA&s'
                                        ),
                                        height: 55,
                                        width: 55,
                                      ),
                                    ),
                                    Spacer(),
                                    Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://pbs.twimg.com/media/GB2vydcX0AAgt5f?format=png&name=360x360'),
                                              fit: BoxFit.cover)),
                                    )
                                  ],
                                ),
                                kheight,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text('TV Shows', style: kHomeTitleText),
                                    Text('Movies', style: kHomeTitleText),
                                    Text('Categories', style: kHomeTitleText),
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }));
  }
}
