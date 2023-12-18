import 'package:flutter/material.dart';

class CustomSocialMedia extends StatelessWidget {
   CustomSocialMedia({Key? key,
     required this.image, required this.bordercolor, required this.imagecolor,required this.function}) : super(key: key);
  void Function()? function;
  final String image;
  final Color bordercolor;
  final Color imagecolor;


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: function,
            child: Container(
              width:70 ,
              decoration: BoxDecoration(
shape: BoxShape.circle,
                border: Border.all(color: bordercolor,width: 2),

              ),

              height: 82,
              child:
              Image.asset(image,width: 10,height: 10,color: imagecolor),

            ),
          );



  }
}
