import 'package:flat_list/flat_list.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../consant/color.dart';
import '../../services/config_services.dart';
import '../widgets/qruan_view_item.dart';

class QruanScreen extends StatelessWidget {
  const QruanScreen({super.key, required this.currentIndex});
  final currentIndex;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderScreen>(context);
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .99,
      color: PrimaryColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          child: Row(textDirection: TextDirection.rtl, children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: PrimaryColor,
              child: PageView(
                onPageChanged: (value) {
                  // print(provider.All_Data[currentIndex].toString());
                  // print(value+currentIndex);
                   saveIndex(value+currentIndex);
                },
                reverse: true,
                clipBehavior: Clip.none,
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                children: provider.All_Data.where((element) =>
                        provider.All_Data.indexOf(element) >= currentIndex)
                    .map((e) => QruanViewItem(
                          item: e,
                        ))
                    .toList(),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  void saveIndex (currentIndex) async
   {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('currentIndex',currentIndex);
   }

}
