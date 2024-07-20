import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/presentation/download/main_page/widgets/screen_main_page.dart';


void main(){
  runApp(const MyHomepage());
}
class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: ThemeData(
      appBarTheme:const AppBarTheme(backgroundColor: Colors.transparent) ,
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
