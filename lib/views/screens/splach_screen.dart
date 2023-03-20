import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moslim_app/views/screens/main_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {

   @override
  void initState() {
    init();
    super.initState();
  }
 
 void init ()
  {
    Future.delayed(Duration(seconds: 2),
    () 
    {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder:(context) => MainScreen()),
         ((route) => false)
      );
    }
    ); 
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          Center(
            child: Image.asset(
              'assets/h1.png',
               width: MediaQuery.of(context).size.width*.75,
               height: MediaQuery.of(context).size.width*.88,
               fit: BoxFit.fill,
              ),
          ),
        ],
      ),
    );
  }
}