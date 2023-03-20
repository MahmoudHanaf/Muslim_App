import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moslim_app/views/widgets/arabic_surah_num.dart';
import 'package:moslim_app/views/widgets/convert_to_arabic_num.dart';

import '../../consant/color.dart';

class SurahItemView extends StatelessWidget {
  const SurahItemView({super.key, required this.num, required this.name});
  final num;
  final name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: ArabicSurahNumber(num: num),
            title: Text(
              "${name}",
              style: GoogleFonts.amiri(
                  textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: ButtonColor,
              )),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 24,
              color: Colors.grey[600],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          child: Divider(
            height: 1,
            color: Colors.grey[500],
          ),
        )
      ],
    );
  }
}
