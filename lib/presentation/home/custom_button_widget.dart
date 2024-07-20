
import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';

class CustomButtomWidget extends StatelessWidget {
 final IconData icon;
 final String text;
 final double iconSize;
 final double textSize;
  const CustomButtomWidget({
    super.key,
    required this.icon,
    required this.text,
    this.iconSize=30,
    this.textSize=18

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          Icon(icon,
          color: kwhite,
          size: iconSize,
          ),
          Text(text,
          style: TextStyle(fontSize: textSize,),
          ),
      ],
    );
  }
}
