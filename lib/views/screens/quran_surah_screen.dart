import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:moslim_app/views/screens/qruan.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../consant/color.dart';
import '../../utils/size_config.dart';
import '../widgets/arabic_surah_num.dart';
import '../widgets/button_surah_screen.dart';
import '../widgets/drawer_screen.dart';
import '../widgets/surah_item_view.dart';

class QuranSurahScreen extends StatefulWidget {
  QuranSurahScreen({super.key});

  @override
  State<QuranSurahScreen> createState() => _QuranSurahScreenState();
}

class _QuranSurahScreenState extends State<QuranSurahScreen> {


  bool canPop = false;

  @override
  Widget build(BuildContext context) {

    final provider =Provider.of<ProviderScreen>(context,listen: false) ;
    final size = MediaQuery.of(context).size;
    var data =provider.getIndex(context)  ;
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: DrawerScreen(),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: MainColor),
        backgroundColor: MainColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "القران الكريم",
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
            'assets/qruan.png',
            fit: BoxFit.contain,
          )
        ],
      ),
      body: Column(children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .1,
          color: MainColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                     provider.change_content_items(1);
                  },
                  child: provider.currentIndex==1 ?
                   ButtonSurahScreen(
                    title: 'جزء',
                    color:Colors.grey.shade300,
                    titleColor: Colors.grey.shade700,
                  )
                  :
                  ButtonSurahScreen(
                    title: 'جزء',
                    color:ButtonColor,
                    titleColor: PrimaryColor,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .08,
                ),
                GestureDetector(
                  onTap: () {
                    
                    provider.change_content_items(0);
                  },
                  child: 
                  provider.currentIndex==0 || provider.currentIndex ==null ?
                  ButtonSurahScreen(
                    title: 'سورة',
                    color: Colors.grey.shade300,
                    titleColor: Color.fromARGB(255, 12, 8, 8),
                  )
                  :
                  ButtonSurahScreen(
                    title: 'سورة',
                    color: ButtonColor,
                    titleColor: PrimaryColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: size.width,
          color: MainColor,
          child: Container(
            height: size.height * .66,
             decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)),
              color: PrimaryColor
              ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20 ),
                    child: Container(
                      // width: size.width * .88,
                      // height: size.height*.16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkWell(
                          onTap: () async{
                          //  var data =await getIndex(context);
                          //  print(provider.index);
                           Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QruanScreen(
                                      currentIndex: provider.index),
                                ),
                              );
                           
                          },
                          child: Row(
                            children: [
                              Image.asset( 
                                'assets/quran5.png',
                                fit: BoxFit.contain,
                                width: 80,
                              ),
                              SizedBox(
                                width: size.width *.1,
                              ),
                              Container(
                                width:size.width *.44 ,
                                // color: Colors.amber,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                   
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "اخر قراة  ",
                                          style: GoogleFonts.amiri(
                                              textStyle: TextStyle(
                                            fontSize: 21,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.grey[600],
                                          )),
                                        ),
                                        Image.asset(
                                          'assets/quran4.png',
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    ),
                                    Text(
                                      data != null?
                                      
                                      // getIndex(context)!= 0 ?
                                      'سورة ${provider.All_Data[provider.index]['sura_name']}'
                                      :
                                      "سورة الفاتحة",
                                     
                                      style: GoogleFonts.amiri(
                                          textStyle: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800,
                                        color: ButtonColor,
                                      )),
                                    ),
                                    Text(
                                       data != null ?
                                       'الجزء ${provider.All_Data[provider.index]['part_name']}'
                                       :
                                      "الجزء الاول",
                                      style: GoogleFonts.amiri(
                                          textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey[600],
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                 
                   Provider.of<ProviderScreen>(context,listen: false).currentIndex ==1?
    
                    Column(
                    children: Provider.of<ProviderScreen>(context)
                        .Category_parts
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QruanScreen(
                                      currentIndex: e['start_index']),
                                ),
                              );
                                saveIndex(e['start_index']);
                            },
                            child: SurahItemView(
                              num: Provider.of<ProviderScreen>(context)
                                  .Category_parts
                                  .indexOf(e),
                              name: 'الجزء ${e['part_name']}',
                            ),
                          ),
                        )
                        .toList(),
                  )
                
                   :
    
                  Column(
                    children: Provider.of<ProviderScreen>(context)
                        .Category_surah
                        .map(
                          (e) => InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => QruanScreen(
                                      currentIndex: e['start_index']),
                                ),
                              );
                              // print(e['start_index']);
                              saveIndex(e['start_index']);
                            },
                            child: SurahItemView(
                              num: Provider.of<ProviderScreen>(context)
                                  .Category_surah
                                  .indexOf(e),
                              name: 'سورة ${e['surah_name']}',
                            ),
                          ),
                        )
                        .toList(),
                  ),
                
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

   Future getIndex (context) async
   {
      SharedPreferences pref = await SharedPreferences.getInstance();
      var data= await pref.getInt('currentIndex') ;
      // print(data);
      Provider.of<ProviderScreen>(context,listen: false).changeIndex(data) ;
      return data ;
   }

    void saveIndex (currentIndex) async
   {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('currentIndex',currentIndex);
   }
}
