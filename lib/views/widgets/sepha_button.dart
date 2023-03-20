import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moslim_app/provider/provider_screen.dart';
import 'package:provider/provider.dart';

class SephaButton extends StatelessWidget {
  SephaButton({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        showAlertDialog(context);
        
      },
      child: Material(
        elevation: 3,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: size.width * .4,
          height: 45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
          child: Center(
            child: Text(
              "اعادة الضبط",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[900]),
            ),
          ),
        ),
      ),
    );
  }

  Future showAlertDialog(context) async {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            " هل تريد اعادة الضبط ؟",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.grey[900]),
          ),
          actionsAlignment: MainAxisAlignment.spaceAround,
          actions: [
            TextButton(
               style: ButtonStyle(
                    animationDuration: Duration(seconds: 1),
                    backgroundColor:MaterialStateColor.resolveWith((states) => Colors.white,), 
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.white,),
                    ),
              child: Text('نعم',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800])),
              onPressed: () {
                Provider.of<ProviderScreen>(context,listen: false).reset_sepha_num();
                Navigator.pop(context);
              },
            ),
            TextButton(
               style: ButtonStyle(
                    animationDuration: Duration(seconds: 1),
                    backgroundColor:MaterialStateColor.resolveWith((states) => Colors.white,), 
                    overlayColor: MaterialStateColor.resolveWith((states) => Colors.white,),
                    ),
              child: Text('لا',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[800])),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
