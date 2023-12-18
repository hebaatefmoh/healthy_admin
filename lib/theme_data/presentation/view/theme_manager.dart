
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/addproduct_widget.dart';
import 'package:myhealthyfood_admin/allproduct_screen.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/home_page.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_cubit.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_state.dart';
import 'package:myhealthyfood_admin/mainscreen.dart';
import 'package:myhealthyfood_admin/order_screen.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/font_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/resources/values_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class StylesTheme {
 static ThemeData getApplicationTheme(bool isDarkTheme,BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:isDarkTheme?ColorManager.black: ColorManager.white,

      primaryColor:isDarkTheme? ColorManager.black:ColorManager.primary,
      primaryColorLight:isDarkTheme? ColorManager.black:ColorManager.primary,
      primaryColorDark: isDarkTheme? ColorManager.black:ColorManager.primary,
      disabledColor: isDarkTheme? ColorManager.black:ColorManager.primary,
      splashColor: isDarkTheme? ColorManager.black:ColorManager.primary,
      // ripple effect color
      // cardview theme
      cardTheme: CardTheme(
          color:isDarkTheme? ColorManager.black:ColorManager.primary,
          shadowColor: isDarkTheme? ColorManager.black:ColorManager.primary,
          elevation: AppSize.s4),
      // app bar theme
      appBarTheme: AppBarTheme(
          centerTitle: true,
          color: isDarkTheme? ColorManager.black:ColorManager.primary,
          elevation: AppSize.s0,
          shadowColor: isDarkTheme? ColorManager.black:ColorManager.primary,
          titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.white)),
      // button theme
      buttonTheme: ButtonThemeData(
          shape: const StadiumBorder(),
          disabledColor: isDarkTheme? ColorManager.white:ColorManager.primary,
          buttonColor: isDarkTheme? ColorManager.white:ColorManager.primary,
          splashColor: isDarkTheme? ColorManager.white:ColorManager.primary,),

      // elevated button them
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              textStyle: getRegularStyle(
                  color:isDarkTheme? ColorManager.white:ColorManager.primary, fontSize: FontSize.s17),
              primary:isDarkTheme? ColorManager.white:ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppSize.s12)))),
      iconTheme: IconThemeData(
        color: isDarkTheme?  ColorManager.white:
             ColorManager.black
      ),

      textTheme: TextTheme(

          displayLarge:   isDarkTheme? getSemiBoldStyle(
           color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
           color:   ColorManager.black, fontSize: FontSize.s16),
          headlineLarge: isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.white, fontSize: FontSize.s16),
          headlineMedium: isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.white, fontSize: FontSize.s16),
          titleMedium:
          isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.white, fontSize: FontSize.s16),
          titleSmall:
          isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.white, fontSize: FontSize.s16),          bodyLarge: getRegularStyle(color: ColorManager.grey1),
          bodySmall:isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.white, fontSize: FontSize.s16),
          bodyMedium: isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
              color:   ColorManager.black, fontSize: FontSize.s16),
          labelSmall:
   isDarkTheme? getSemiBoldStyle(
   color:  ColorManager.white, fontSize: FontSize.s16):getSemiBoldStyle(
   color:   ColorManager.black, fontSize: FontSize.s16),),
      // input decoration theme (text form field)
      inputDecorationTheme: InputDecorationTheme(
        // content padding
          contentPadding: const EdgeInsets.all(AppPadding.p8),
          // hint style
          hintStyle:
          isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s14):getSemiBoldStyle(
              color:   ColorManager.black, fontSize: FontSize.s14),
          labelStyle:
          isDarkTheme? getSemiBoldStyle(
              color:  ColorManager.white, fontSize: FontSize.s14):getSemiBoldStyle(
              color:   ColorManager.black, fontSize: FontSize.s14),
          errorStyle: getRegularStyle(color: ColorManager.error),

          // enabled border style
          enabledBorder: OutlineInputBorder(
              borderSide:isDarkTheme?
              BorderSide(  color: ColorManager.white, width: AppSize.s1_5):
              BorderSide(  color: ColorManager.black, width: AppSize.s1_5),

              borderRadius: const BorderRadius.all(
                  Radius.circular(AppSize.s8))),

          // focused border style
          focusedBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius: const BorderRadius.all(
                  Radius.circular(AppSize.s8))),

          // error border style
          errorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorManager.error, width: AppSize.s1_5),
              borderRadius: const BorderRadius.all(
                  Radius.circular(AppSize.s8))),
          // focused border style
          focusedErrorBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
              borderRadius: const BorderRadius.all(
                  Radius.circular(AppSize.s8)))),
      // bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //
      //   backgroundColor:isDarkTheme?ColorManager.black:ColorManager.white,
      //   selectedItemColor: isDarkTheme?ColorManager.white:ColorManager.black,
      //   unselectedItemColor: isDarkTheme?ColorManager.white:ColorManager.black,),
      // buttonBarTheme: ButtonBarThemeData(
      //
      //
      // )


      //
      // )
      // label style
    );
  }
}