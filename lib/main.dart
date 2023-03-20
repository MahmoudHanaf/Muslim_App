import 'package:flutter/material.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:moslim_app/services/config_services.dart';
import 'package:moslim_app/views/screens/azkar_screen.dart';
import 'package:moslim_app/views/screens/main_screen.dart';
import 'package:moslim_app/views/screens/qruan.dart';
import 'package:moslim_app/views/screens/quran_surah_screen.dart';
import 'package:moslim_app/views/screens/sepha.dart';
import 'package:moslim_app/views/screens/splach_screen.dart';
import 'package:provider/provider.dart';

void main() {
  // ConfigServices.init();

  runApp(
    MultiProvider(
      providers :
      [
       ChangeNotifierProvider(create: (context) => ProviderScreen(),),
      ],
      child: const MyApp())
      );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: 'QuranSurah'),
      home: SplachScreen(),
    );
  }
}

