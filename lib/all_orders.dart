import 'package:flutter/material.dart';

import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/font_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/resources/values_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class AllOrdersHome extends StatelessWidget {
  const AllOrdersHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=getcolorTheme( context: context).gettheme;
    final color=getcolorTheme( context: context).color;
    final textcolor=theme?getcolorTheme( context: context).Appcolor.withOpacity(.5):Colors.green.withOpacity(.2);
    return Material(

    borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
color: textcolor,
              child: Row(mainAxisAlignment: MainAxisAlignment.start,
                              children: [

                                Flexible(flex: Dimensions().width(context)<650?3:1,
                                    child:
                                    Container(
                                      width:280 ,
                                        height: 200,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          //color: Colors.grey,
                                          image: DecorationImage(

                                              image: AssetImage("assets/images/juice.jpg",),
                                              fit: BoxFit.cover, ),
                                        )
                                    ),
          ),
                                Expanded(
                                  flex: 5,
                                  child: Column(



                                    children: [



                                      Text("\$45",style: getBoldStyle(color:color),),






                                      Text("By Heba lk",style: getBoldStyle(color:color),),


                                      Text("20/3/2023",style: getBoldStyle(color:color),)





                                    ],



                                  ),
                                ),






                              ]

              ),
            ),
        )



    );

            }




  }


