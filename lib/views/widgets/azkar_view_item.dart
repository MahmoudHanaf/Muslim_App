import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../screens/azkar_content_screen.dart';

class AzkarViewItem extends StatelessWidget {
  const AzkarViewItem({super.key, required this.category});
  final category ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AzkarContentScreen(
              category: category,
               Items: category['Items'] as List<Map<String, Object>> ),
          )
        );
      

      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 2,
        child: Container(
          width: 140,
          height: 150,
          margin: EdgeInsets.only(
            top: 15,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.grey[100]
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  '${category['image']}',
                  width: 140,
                  height: 110,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "${category['name']}",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
