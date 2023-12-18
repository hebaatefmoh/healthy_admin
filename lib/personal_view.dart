
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_cubit.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class PersonalView extends StatelessWidget {
  const PersonalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;
    Color appcolor=getcolorTheme(context: context).Appcolor;

          return SafeArea(
            child: Scaffold(
              body:

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 50),
            child: Container(
            width:Dimensions().width(context),
            height:Dimensions().height(context),

            decoration: BoxDecoration(


            ),
                  child: SingleChildScrollView(
                    child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
                     // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
Column(
  children: [





                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                              child: SwitchListTile(
                                title: Text("Theme".tr(context),
                                  style:
                                 getBoldStyle(color:color)),
                                secondary: Icon(Icons.light_mode_outlined,color:color,
                                    ),

                                value: BlocProvider.of<DarkThemeCubit>(context).getdarkTheme,

                                onChanged: (bool value) {
BlocProvider.of<DarkThemeCubit>(context).setDarkTheme(value);
                                },

                              )
                          ),
                        ),


                      ],
                    ),



]

            ),
    )
    )
    )
            )

          );


  }
}

