import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class TextFormFieldScreen extends StatelessWidget {
   TextFormFieldScreen({Key? key, required this.name,
      this.icon, required this.type, this.suffix,  this.function, this.functionontap,this.onchange,
     this.validator,
     this.controller,    this.obsecure,
     }) : super(key: key);
final String name;
final IconData? icon;
final TextInputType type;
final IconButton? suffix;
 final  bool? obsecure;
   void Function(String)? onchange;


void Function(String)? function;

   void Function()? functionontap;
   String? Function(String?)? validator;
   TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;

    return  TextFormField(
      style: getBoldStyle(color:color),
      obscureText: obsecure??false,
      onChanged:onchange ,
      controller: controller,validator:validator ,
      keyboardType:type,
onFieldSubmitted: function,
      onTap: functionontap,
      decoration: InputDecoration(
        labelStyle:getBoldStyle(color:Colors.white) ,
        hintText: name,
        
        suffixIcon: suffix,

        hintStyle: getBoldStyle(color:Colors.white),
        prefixIcon: Icon(icon ),
        prefixIconColor:Colors.white,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),

        ),

      ),
    );
  }
}
