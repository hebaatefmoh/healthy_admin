

import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';


class AddItemsButton extends StatelessWidget {
   AddItemsButton({Key? key, required this.icon, required this.color, required this.text, required this.onpress}) : super(key: key);
final IconData icon;
final Color color;
final String text;
final VoidCallback onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.isDesktop(context)?Dimensions().width(context)*.15:Dimensions().width(context)*.30,
      height:Responsive.isDesktop(context)? Dimensions().height(context)*.08:Dimensions().width(context)*.11,

      child: ElevatedButton.icon(

        onPressed: onpress, label:Text(text,style:Responsive.isDesktop(context)?
      getBoldStyle(color: Colors.white):
      getsmallStyle(color: Colors.white),),icon:Icon(icon,size:Responsive.isDesktop(context)?20:20 ,),

        style: TextButton.styleFrom(

          backgroundColor: color,
         padding: EdgeInsets.symmetric(
           horizontal: 15,
           vertical: 10/(Responsive.isDesktop(context)?1:2),
         )

        ),


      ),
    );
  }
}
