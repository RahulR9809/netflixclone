import 'package:flutter/material.dart';
import 'package:netflix/application/controller/controller_movie.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/New_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/New_and_hot/widgets/everyones_watching.dart';
class ScreenNewAndHot extends StatefulWidget {
  const ScreenNewAndHot({super.key});

  @override
  State<ScreenNewAndHot> createState() => _ScreenNewAndHotState();
}

class _ScreenNewAndHotState extends State<ScreenNewAndHot> {

List upcomingMovies=[];
List popularMovies=[];
bool isLoading=true;
bool isError=false;


Future<void>upComingMovies()async{
  try{
    List movies=await movieServies.getUpcomingMovies();
    List popular=await movieServies.getpopularMovies();


    if(mounted){
setState(() {
  upcomingMovies=movies;
  popularMovies=popular;
  isLoading=false;
});
    }
  }catch(e){
    print('Error fetching upcoming movies: $e');
    if(mounted){
      setState(() {
        isError=true;
        isLoading=false;
      });
    }
  }
}
@override
void initState(){
  super.initState();
  upComingMovies();
}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:  Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: const Text(
              'New & Hot',
              style: TextStyle(
                  color: kwhite, fontSize: 30, fontWeight: FontWeight.w500),
            ),
            actions: [
             const Icon(
                Icons.cast,
                color: Colors.white,
                size: 30,
              ),
              kwidth,
              Container(
                width: 25,
                height: 25,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://pbs.twimg.com/media/GB2vydcX0AAgt5f?format=png&name=360x360'),
                        fit: BoxFit.cover)),
              )
            ],
            bottom: TabBar(
                dividerHeight: 0,
                isScrollable: true,
                unselectedLabelColor: kwhite,
                labelColor: kblackcolor,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicator:
                    BoxDecoration(borderRadius: kRadius30, color: kwhite),
                tabs: [
                  Tab(
                    text: "🍿Coming Soon ",
                  ),
                  Tab(
                    text: " 👀Everyone's Watching ",
                  )
                ]),
          ),
        ),
        body: isLoading ?
        Center(child: CircularProgressIndicator(),)
        :isError
        ?Center(child: Text('Error fetching Movies'),)
        :
         TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneIsWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: upcomingMovies.length,
        itemBuilder: (BuildContext context, index) =>  ComingSoonwidget(movies:upcomingMovies, index: index, coming: upcomingMovies[index],));
  }

  Widget _buildEveryoneIsWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context,index)=>EveryonesWachingWidget(movies: popularMovies,index: index, everyone:popularMovies[index], ));
  }
}
