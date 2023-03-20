import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:provider/provider.dart';

import '../../consant/color.dart';
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final  provider =Provider.of<ProviderScreen>(context,listen: false) ;
    return Scaffold(
      body: 
        provider.Screens[
          provider.bottomIndex
        ],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        // focusElevation: .1,
        child: Image.asset('assets/quran4.png'),
        onPressed: ()
        {
           provider.ChangeBottomNavBar(1);
        },
        backgroundColor: Colors.white,
        elevation: 2,

      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),

        child: Container(
          // height: kBottomNavigationBarHeight *.99,
          decoration: BoxDecoration(
            border: Border(top: BorderSide(width: .5,color: Colors.grey.shade100))
          ),
          child: BottomNavigationBar(
         backgroundColor: Colors.white,
          showSelectedLabels: true,
          items: Provider.of<ProviderScreen>(context).bottomItem,
          currentIndex: provider.bottomIndex,
           selectedItemColor: MainColor,
            unselectedItemColor: Colors.grey[600],
            showUnselectedLabels: true,
            elevation: 15,
          onTap: (value) {
            provider.ChangeBottomNavBar(value);
          },
          
              ),
        ),
      )
    );
  }
}