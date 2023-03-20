import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../consant/color.dart';
import '../../provider/provider_screen.dart';
import '../widgets/azkar_view_item.dart';
import '../widgets/drawer_screen.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerScreen(),
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: MainColor
          ),
          backgroundColor: MainColor,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "اذكار وادعية",
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
          // leading: GestureDetector(
          //   onTap: ()
          //   {
          //      Provider.of<ProviderScreen>(context,listen: false).recursive_sepha_items();
          //   },
          //   child: Icon(
          //     Icons.density_medium,
          //     size: 25,
              
          //     ),
          // ),
          actions: [
            Image.asset(
              'assets/m3.png',
              fit: BoxFit.fitWidth,
              width: 70,
            )
          ],
        ),
      body: SingleChildScrollView(
        child: Container(
           color: MainColor,
          child: Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10),
             decoration: BoxDecoration(
               borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: PrimaryColor  
             ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: 
                [
                
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: Wrap( 
                        spacing: MediaQuery.of(context).size.width *.1,
                        runSpacing: 20,
                       children: Provider.of<ProviderScreen>(context)
                       .Azquar_Category.map(
                        (e) => AzkarViewItem(category: e),
                       ).toList()
                      
                      ),
                  ),
                    
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}