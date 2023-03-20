import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:moslim_app/consant/color.dart';
import 'package:moslim_app/views/widgets/convert_to_arabic_num.dart';
import 'package:provider/provider.dart';

import '../../provider/provider_screen.dart';

class AzkarContentItem extends StatelessWidget {
  const AzkarContentItem({super.key,
   required this.Item ,
    required this.category_index, 
    required this.Item_index ,
    });
  final Item ;
  final category_index ;
  final Item_index ;
  @override
  Widget build(BuildContext context) {
    return 
       Item['description'] =='' && Item['count'] ==0 ?
      Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width *.92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "${Item['zekr']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800]
                            ),
                            ),
                        ),
                      ],
                    ),
                  )),
              ),
            )
       :
    Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Material(
                borderRadius: BorderRadius.circular(15),
                elevation: 2,
                child: Container(
                  width: MediaQuery.of(context).size.width *.92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "${Item['zekr']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey[800]
                            ),
                            ),
                        ),
                      
                        Center(
                          child: Text(
                            "${Item['description']}",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                        
                            ),
                            ),
                        ),
                        SizedBox(height: 5,) ,
                        Item['count'] ==0 ?
                        Text('')
                        :
                        GestureDetector(
                          onTap: () {  
                            Provider.of<ProviderScreen>(context,listen: false)
                            .change_azkar_count(category_index,Item_index);
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                            child: Container(
                              margin: EdgeInsets.all(2),
                              width: MediaQuery.of(context).size.width*.3,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MainColor
                                ),
                              child: Center(
                                child: Directionality(
                                  textDirection: TextDirection.rtl,
                                  child: Text(
                                  Item['count'] ==1 || Item['count'] ==100 ?
                                  "${Item['count']} مرة".toArabicNumbers
                                  :
                                  "${Item['count']} مرات".toArabicNumbers,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                    color: PrimaryColor
                                  ),
                                  ),
                                ),
                              ),  
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              ),
            );
  }
}