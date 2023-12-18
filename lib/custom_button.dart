import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.text, required this.width,  this.function}) : super(key: key);
final String text;
final double width;
   void Function()? function;
  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;
    Color appcolor=getcolorTheme(context: context).Appcolor;
    return Container(
      width: width,
      height: Dimensions().height(context)*.09,

      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),

        color: ColorManager.primarygreeen,

      ),
      child: TextButton(
        onPressed:function,
        child: Text(text,style: getBoldStyle(color: color),),

      ),
    );
  }
}
