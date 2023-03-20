import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:provider/provider.dart';

import '../../consant/color.dart';
import '../widgets/azkar_content_item.dart';

class AzkarContentScreen extends StatelessWidget {
   AzkarContentScreen({super.key, required this.category, required this.Items});
  final category ;
  final Items ;
  late List<Map<String, dynamic>> Item =Items as List<Map<String,dynamic>> ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: MainColor
          ),
          backgroundColor: MainColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "${category['name']}",
            style: GoogleFonts.amiri(
              color: PrimaryColor,
              
              textStyle: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              // fontFamily: 'QuranSurah',
              color: PrimaryColor,
            ),
            ),
          ),
          leading: GestureDetector(
            onTap: ()
            {
              Navigator.pop(context); 
            },
            child: Icon(
              Icons.arrow_back,
              size: 28,
              
              ),
          ),
          actions: [
            Image.asset(
              'assets/qruan.png',
              fit: BoxFit.contain,
            )
          ],
        ) ,
      
      body: SingleChildScrollView(
         physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: Item.map(
            (e) => AzkarContentItem(
              Item: e,
              Item_index: Item.indexOf(e),
              category_index: Provider.of<ProviderScreen>(context).Azquar_Category.indexOf(category)),
          ).toList()
          
          ),
      ),
      
      );
  }
}