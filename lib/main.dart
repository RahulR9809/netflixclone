import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/download/main_page/widgets/screen_main_page.dart';


void main(){
  runApp(myHomepage());
}
class myHomepage extends StatelessWidget {
  const myHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'hei',
     theme: ThemeData(
      appBarTheme:AppBarTheme(backgroundColor: Colors.transparent) ,
      scaffoldBackgroundColor:backgroundColor,
      primaryColor: Colors.blue,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: Colors.white),
      )
     ),

      debugShowCheckedModeBanner: false,
home: screenMainpage(),
    );
  }
}
