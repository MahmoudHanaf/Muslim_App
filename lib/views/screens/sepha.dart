import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:provider/provider.dart';

import '../../consant/color.dart';
import '../widgets/drawer_screen.dart';
import '../widgets/sepha_button.dart';

class SephaScreen extends StatefulWidget {
  const SephaScreen({super.key});

  @override
  State<SephaScreen> createState() => _SephaScreenState();
}

class _SephaScreenState extends State<SephaScreen> {

  @override
  void initState() {
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    final provider =Provider.of<ProviderScreen>(context) ;
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
            "سبحة",
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
         
          actions: [
            Image.asset(
              'assets/m9.png',
              width: 75,

              fit: BoxFit.fill,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: MainColor,
            child: Container(
              width: MediaQuery.of(context).size.width ,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: PrimaryColor  
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: 
                  [
                   SizedBox(height: 25,), 
                   Text(
                         "\" ${provider.ItemData} \"",
                            style: GoogleFonts.amiri(
                            textStyle:TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey[900]
                            ),
                            ),
                        ),
                      
                    SizedBox(
                      height: size.height*.08,
                    ),
                     Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: size.width*.3,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius:BorderRadius.circular(10),
                          color: Colors.grey[100]
                        ),
                        child: Center(
                          child: Text(
                            "${Provider.of<ProviderScreen>(context,).sepha_num}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: ButtonColor
                            ),
                            ),
                        ),
                      ),
                    ),
                    
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Provider.of<ProviderScreen>(context,listen: false).change_sepha_num();
                         Provider.of<ProviderScreen>(context,listen: false).change_index();
                        // print(Provider.of<ProviderScreen>(context,listen: false).Sepha_Items_sequnce.toString());
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: 
                        [
                          CircleAvatar(
                            radius:size.width *.13 ,
                            backgroundColor: Colors.grey[300],
                          ),
                          Image.asset('assets/hhhh.png',
                           width: size.width *.5,
                           height: size.height *.25,
                           fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height*.08,),
                   SephaButton(),
                  ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}