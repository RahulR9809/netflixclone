import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/colors/constsans.dart';
import 'package:netflix/presentation/New_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix/presentation/New_and_hot/widgets/everyones_watching.dart';
class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: AppBar(
            title: Text(
              'New & Hot',
              style: TextStyle(
                  color: kwhite, fontSize: 30, fontWeight: FontWeight.w500),
            ),
            actions: [
              Icon(
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
        body: TabBarView(children: [
          _buildComingSoon(),
          _buildEveryoneIsWatching(),
        ]),
      ),
    );
  }

  Widget _buildComingSoon() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, index) => const ComingSoonwidget());
  }

  Widget _buildEveryoneIsWatching() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context,index)=>EveryonesWachingWidget());
  }
}
