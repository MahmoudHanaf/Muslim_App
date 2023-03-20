import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../consant/color.dart';
import 'package:share_plus/share_plus.dart';
class DrawerScreen extends StatelessWidget {

  const DrawerScreen({super.key});


  @override
  Widget build(BuildContext context) {
     final size = MediaQuery.of(context).size ;
    return Drawer(
        width: size.width*.75,
        
        child: Column(
          children: 
          [
            Container(
              width:size.width*.75 ,
              color: MainColor,
              child: DrawerHeader(
                
                decoration: BoxDecoration(
                  color: MainColor
                ),
                child: Center(
                  child: 
                  
                  Text(
                       "الله",
                          style: GoogleFonts.amiri(
                          textStyle:TextStyle(
                            fontSize: 95,
                            fontWeight: FontWeight.w500,
                            color: Colors.white
                          ),
                          ),
                      ),
                ),
              ),
            ),
            SizedBox(height: 20,),
           
             GestureDetector(
              onTap: () async
              {
               await Share.share("https://play.google.com/store/apps/details?id=com.moslim_app");
              },
               child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  leading: Icon(
                    Icons.share,
                    size: 25,
                    color: Colors.grey[600],
                    ),
                  title: Text(
                    "مشاركة التطبيق",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700]
                    ),
                  ),  
                ),
                         ),
             ),
            Divider(height: 3, color: Colors.grey[500],),
             SizedBox(height: 5,),
             GestureDetector(
              onTap: () async
              {
                launchUrl(await Uri.parse('whatsapp://send?phone=+201012748258'));
              },
               child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListTile(
                  leading: Icon(
                    Icons.help,
                    size: 25,
                    color: Colors.grey[600],
                    ),
                  title: Text(
                    "الدعم والمساعدة",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[700]
                    ),
                  ),  
                ),
                         ),
             ),
             Divider(height: 3, color: Colors.grey[500],),
          ]
          ),
      );
  }
}