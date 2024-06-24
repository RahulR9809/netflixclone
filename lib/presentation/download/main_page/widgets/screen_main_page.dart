// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'package:netflix/presentation/New_and_hot/new_and_hot.dart';
import 'package:netflix/presentation/download/main_page/widgets/bottom_nav.dart';
import 'package:netflix/presentation/download/widgets/screen_downloads.dart';
import 'package:netflix/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix/presentation/home/screen_Home.dart';
import 'package:netflix/presentation/search/screen_search.dart';
// ignore: must_be_immutable
class screenMainpage extends StatelessWidget {
  screenMainpage({super.key});
  final List<Widget> _pages = [
     ScreenHome(),
     ScreenNewAndHot(),
     screenfastLaugh(),
     screenSearch(),
     screenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexchangeNotifier,
          builder: (context, index, child) {
          return _pages[index];
          },
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
