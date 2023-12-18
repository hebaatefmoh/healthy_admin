

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


class SuccessflyResetPassword extends StatelessWidget {
  const SuccessflyResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 30),
          child: Column(
            children: [
              const Align(alignment:Alignment.topLeft,child: CustomBackButton()),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  const SizedBox(height: 60,),
                  Center(child:
                  SizedBox(
                      width: double.infinity,
                      child: Icon(Icons.check_circle_outline,size:100,color: color,)
                   ),),
                  const SizedBox(height: 40,),

                  Center(child: Text("Success".tr(context),
                    style: getSemiBoldStyle(color: color),)),
                  const SizedBox(height: 20,),
                  Center(child: Text("  Your Password has been reset Successfly".tr(context),

                    style: getRegularStyle(color: color),)),
                  const SizedBox(height: 40,),
                  CustomButton(text:"Go Moody Again".tr(context),function: (){
                    Navigator.pushNamed(context, Routes.loginRoute);
                  },
                    width: Dimensions().width(context)*.2,


                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
