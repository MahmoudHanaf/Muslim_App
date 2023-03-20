import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:moslim_app/consant/color.dart';
import 'package:moslim_app/views/widgets/convert_to_arabic_num.dart';

class ArabicSurahNumber extends StatelessWidget {
  const ArabicSurahNumber({super.key, required this.num});
  final int num;
  @override
  Widget build(BuildContext context) {
    return Text(
      "\uFD3F" + (num + 1).toString().toArabicNumbers + "\uFD3E",
      style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          // fontFamily: 'me_quran',
          fontSize: 22,
          fontWeight: FontWeight.w800,
          shadows: [
            Shadow(
              offset: Offset(.5, .5),
              blurRadius: 1.0,
              color: MainColor,
            ),
          ]),
    );
  }
}
