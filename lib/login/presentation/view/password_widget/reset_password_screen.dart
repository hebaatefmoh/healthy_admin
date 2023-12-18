

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/login/data/models/login_controller.dart';
import 'package:myhealthyfood_admin/login/presentation/view_model/sign_in_bloc/login_bloc.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/custom_backbutton.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/flutter_toast.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/text_formfield.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';
class ResetPassword extends StatelessWidget {
   ResetPassword({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;

    return SafeArea(
        child: Scaffold(
        body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
    child:   SingleChildScrollView(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const CustomBackButton(),
    const SizedBox(height: 20,),
    Center(child: Text("Reset password".tr(context),
    style: getMediumStyle(color: color),)),
    const SizedBox(height: 20,),
      Center(child: Text("  Atleast 6 number or character with uppercase and lowercase letters",

        style: getRegularStyle(color:color),),),
    const SizedBox(height: 60,),

    Form(
    key: formkey,
    child:SingleChildScrollView(
    child: Column(
    children: [

    TextFormFieldScreen(name:" Enter New Password".tr(context),obsecure: true,
    suffix: IconButton(onPressed: () {  }, icon: const Icon(Icons.remove_red_eye),),
    type: TextInputType.visiblePassword,),

    const SizedBox(height: 15,),

    TextFormFieldScreen(name: "confirm password".tr(context),obsecure: true,
    type: TextInputType.visiblePassword,
    suffix: IconButton(onPressed: () {  }, icon: const Icon(Icons.remove_red_eye),


    ),
    ),

    const SizedBox(height: 30,),
      CustomButton(text: "verify".tr(context),function: (){
        Navigator.pushNamed(context, Routes.SuccessflyResetPassword);
      },
        width: Dimensions().width(context)*.2,


      ),

    ]
    )
    ),
    )
    ]
    )
    )
    ))
    );

  }
}
