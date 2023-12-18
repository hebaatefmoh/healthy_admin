

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
import 'package:myhealthyfood_admin/language/presentation/view/settings.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_cubit.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_state.dart';
import 'package:myhealthyfood_admin/login/presentation/view/password_widget/forget_password_screen.dart';
import 'package:myhealthyfood_admin/login/presentation/view/signin_screen.dart';
import 'package:myhealthyfood_admin/mainscreen.dart';
import 'package:myhealthyfood_admin/order_screen.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/signup_screen.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/splash.dart';
import 'package:myhealthyfood_admin/utiles.dart';
import 'package:myhealthyfood_admin/view_all_screen.dart';

import '../language/presentation/view/settings.dart';
import '../login/presentation/view/password_widget/resetpassword_scuccessfully.dart';

class Routes {

  static const String homepage = "/home";
  static const String main = "/main";
  static const String allproduct = "/product";
  static const String allorder = "/allorder";
  static const String addproduct = "/addproduct";
  static const String splashRoute = "/splashRoute";
  static const String loginRoute = "/";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String onBoardingRoute = "/onBoarding";

  static const String storeDetailsRoute = "/storeDetails";
  static const String OPTRoute = "/optscreen";
  static const String VerifySignUp='/verifysignup';
  static const String ResetPassword='/ResetPassword';
  static const String SuccessflyResetPassword='/SuccessflyResetPassword';
  static const String VerifySignUpScuccessfly='/VerifySignUpScuccessfly';

  static const String viewall='/Veiewall';











}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {

    switch (settings.name) {
      case Routes.main:
        return MaterialPageRoute(builder: (_) =>  MainScreen());
      case Routes.addproduct:
        return MaterialPageRoute(builder: (_) =>  AddProductScreen());
      case Routes.homepage:
        return MaterialPageRoute(builder: (_) =>  DashboardScreen());
      case Routes.viewall:
        return MaterialPageRoute(builder: (_) =>  ViewAll());

      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) =>  Splash());


      case Routes.SuccessflyResetPassword:
        return MaterialPageRoute(builder: (_) =>  const SuccessflyResetPassword());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>  SignUpScreen());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  SignInScreen());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) =>  ForgetPassword());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: Text(""),
              ),
              body: Center(child: Text("")),
            ));
  }
}

