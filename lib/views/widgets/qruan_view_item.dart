import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:pinch_zoom/pinch_zoom.dart';
import 'package:provider/provider.dart';

import '../../consant/color.dart';

class QruanViewItem extends StatelessWidget {
  const QruanViewItem({super.key, required this.item});
  final item;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Center(
                child: Text(
                  'هل تريد الخروج ؟',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.grey.shade900
                  ),
                  
                  ),
              ),
             actionsAlignment: MainAxisAlignment.spaceAround,
              actions: [
                TextButton(
                  style: ButtonStyle(
                    animationDuration: Duration(seconds: 1),
                    backgroundColor:MaterialStateColor.resolveWith((states) => Colors.white,), 
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.white,),
                    ),
                  onPressed: () {
                    Provider.of<ProviderScreen>(context,listen: false).getIndex(context);
                    Navigator.pop(context, true);
                  },
                  child: Text(
                    'نعم',
                   style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[800]
                )
                    ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                   style: ButtonStyle(
                    animationDuration: Duration(seconds: 1),
                    backgroundColor:MaterialStateColor.resolveWith((states) => Colors.white,), 
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.white,),
                    ),
                  child: Text('لا',
                  style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade800
                )
                  ),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: MainColor
          ),
          backgroundColor: MainColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "${item['sura_name']}",
            style: GoogleFonts.amiri(
              color: PrimaryColor,
              
              textStyle: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
              // fontFamily: 'QuranSurah',
              color: PrimaryColor,
            ),
            ),
          ),
          leadingWidth: MediaQuery.of(context).size.width *.35,
          
          leading: Padding(
            padding: const EdgeInsets.only(left: 5,top: 10),
            child: Text(
              "${item['part_name']}",
              textAlign: TextAlign.start,
              style: GoogleFonts.amiri(
                textStyle: TextStyle(
                fontSize: 22,
                fontFamily: 'QuranSurah',
                fontWeight: FontWeight.w800,
                color: PrimaryColor,
              ),
              )
            ),
          ),
          actions: [
            Image.asset(
              'assets/qruan.png',
              fit: BoxFit.contain,
            )
          ],
        ),
       
        body: Padding(
          padding: const EdgeInsets.only(bottom: 10, top: 10),
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .96,
              height: MediaQuery.of(context).size.height * .92,
              child: PinchZoom(
                resetDuration: Duration(seconds: 5),
                maxScale: 4,
                onZoomStart: () {},
                onZoomEnd: () {
                  print('Stop zooming');
                },
                child: Image.asset(
                  item['image'],
                  width: MediaQuery.of(context).size.width * .96,
                  height: MediaQuery.of(context).size.height * .92,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  
}
