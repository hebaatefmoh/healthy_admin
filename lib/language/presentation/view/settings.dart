import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_cubit.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_state.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/utiles.dart';
class Settings extends StatelessWidget {
   Settings({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).Appcolor;

    return SafeArea(
      child: Scaffold(
        backgroundColor: color,


        body:   BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if (state is changeLocalState) {
                String  languagecode=state.locale.languageCode;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomButton(
                        width: Dimensions().width(context)*.8,

                        function: (){
                languagecode="en";
                BlocProvider.of<LanguageCubit>(context).changeLanguage(languagecode) ;
                context.read<LanguageCubit>().changeLanguage(languagecode);

                },
                       text: 'EN'.tr(context),),


                      SizedBox(height: 40,),
                      CustomButton(

                        width: Dimensions().width(context)*.8,

                        text: 'AR'.tr(context), function: () {
                        languagecode= "ar";
                        BlocProvider.of<LanguageCubit>(context).changeLanguage(languagecode)   ;
                        context.read<LanguageCubit>().changeLanguage(languagecode);

                      },                      )
                    ],



                  ),
                );
              }

              else{
                return SizedBox();
              }}
        ),













      ),
    );
  }
}
