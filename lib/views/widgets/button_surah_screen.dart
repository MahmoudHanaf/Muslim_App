import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../consant/color.dart';

class ButtonSurahScreen extends StatelessWidget {
   ButtonSurahScreen({super.key, required this.title, required this.color, required this.titleColor});
  final title;
   Color color;
   Color titleColor ;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .4,
      height: 43,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13), color: color),
      child: Center(
        child: Text(
          "${title}",
          style: TextStyle(
              fontSize: 23, 
              fontWeight: FontWeight.w800,
               color: titleColor),
        ),
      ),
    );
  }
}
