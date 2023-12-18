


import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';


class PageViewContent extends StatelessWidget {
   const PageViewContent( {Key? key, required this.image, required this.text}) : super(key: key);
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return           Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Image.asset(image,
          width: Dimensions().width(context),
          height: Dimensions().height(context),fit: BoxFit.cover,),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,bottom: 15),
          child: Text(text,style: getBoldStyle(color: ColorManager.white),),
        )
      ],
    );
  }
}
