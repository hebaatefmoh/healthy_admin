import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({Key? key, this.icon,
    required this.title,  required this.trailing}) : super(key: key);
  final Widget? icon;
  final String title;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;
    Color appcolor=getcolorTheme(context: context).Appcolor;

    return ListTile(
      trailing:Text(trailing,),
      title: Text(title,style: getRegularStyle(color: color),) ,
      leading:Icon(Icons.task,color: ColorManager.primarygreeen,) ,
    );
  }
}
