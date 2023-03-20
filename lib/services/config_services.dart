import 'package:shared_preferences/shared_preferences.dart';

class ConfigServices
{
   SharedPreferences ?pref ;

  static void init() async
   {
    SharedPreferences ?pref;
    pref =await SharedPreferences.getInstance();
   }

  void saveIndex (int currentIndex) async
   {
      SharedPreferences pref ;
      pref =await SharedPreferences.getInstance();
      pref.setInt('currentIndex',currentIndex);
   }

   void getIndex () async
   {
       SharedPreferences pref ;
       pref =await SharedPreferences.getInstance();
       pref.getInt('currentIndex');
   }

}