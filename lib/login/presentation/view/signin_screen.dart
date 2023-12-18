import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/login/data/models/login_controller.dart';
import 'package:myhealthyfood_admin/login/presentation/view_model/sign_in_bloc/login_bloc.dart';
import 'package:myhealthyfood_admin/page_view_model.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/custom_backbutton.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/flutter_toast.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/text_formfield.dart';
import 'package:myhealthyfood_admin/resources/assets_manager.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> formkey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).Appcolor;
    Color appcolor=getcolorTheme(context: context).color;


    return BlocProvider(
  create: (context) => LoginBloc(),
  child: BlocConsumer<LoginBloc, LoginState>(
  listener: (context, state) {



  },
  builder: (context, state) {
    return SafeArea(
    child: Scaffold(
      body:   Stack(
      children: [
        SingleChildScrollView(child: HomePageView()),
      //   Container(
      //
      //
      //
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //
      //       image: AssetImage(
      //
      //
      //         ImageAssets.splashLogo,
      //
      //
      //       ),fit: BoxFit.cover),
      //
      //
      // ),),
        Container(
          width:Dimensions().width(context),
          height:Dimensions().height(context),

          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorManager.darkGrey.withOpacity(.5),
                ColorManager.darkGrey.withOpacity(.5),
                ColorManager.darkGrey.withOpacity(.5),

              ]
            ),


          ),
          child: Padding(
          padding: const EdgeInsets.symmetric(
          horizontal: 30.0, vertical: 10),
          child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //CustomBackButton(),
          const SizedBox(height: 20,),
          Center(child: Text("SignIn".tr(context),
          style: getSemiBoldStyle(color: color),)),
          const SizedBox(height: 120,),

          Form(
          key: formkey,
          child: SingleChildScrollView(
          child: Column(
          children: [

          TextFormFieldScreen(name: "Email".tr(context),

obsecure: false,
          icon: Icons.email,
          type: TextInputType.emailAddress,
          onchange:(value){
            context.read<LoginBloc>().add(EmailLoginEvent(value));
          },

          ),

          const SizedBox(height: 15,),



           TextFormFieldScreen(

          name: "password".tr(context),
          obsecure: BlocProvider.of<LoginBloc>(context).obsecuretext,

          icon: Icons.lock_clock_rounded,
          onchange:(value){
          context.read<LoginBloc>().add(passwordLoginEvent(value));
          },


          type: TextInputType.visiblePassword,

          suffix: IconButton(onPressed: () {
             BlocProvider.of<LoginBloc>(context).changeObsecureTextevent();

          },
          icon: BlocProvider.of<LoginBloc>(context).icon



          ),
           ),




          const SizedBox(height: 10,),
          Align(

          alignment: Alignment.centerRight,
          child: TextButton(onPressed: () {

          Navigator.pushNamed(
          context, Routes.forgotPasswordRoute);
          },
          child: Text(
          "Forget Password".tr(context),
          style: getBoldStyle(
          color: color),))),
          const SizedBox(height: 15,),

     CustomButton(text: "SignIn".tr(context),
          function: () {
           // BlocProvider.of<AddDataCubit>(context).addFoodsToFirestore();
            SignInController(context).handleSignIn("email");



          },
            width: Dimensions().width(context)*.6,

          ),

          const SizedBox(height: 15,),







          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Dont have an account?".tr(context),
          style:getBoldStyle(
                color: ColorManager.lightGrey),),
          TextButton(onPressed: () {
          Navigator.pushNamed(
          context, Routes.registerRoute);
          },
          child: Text("SignUp".tr(context),
          style: getBoldStyle(
          color: appcolor),))
          ],
          )


          ],
          ),
          ),
          ),
          ]
          ),
          ),
          ),
        ),
      ],
    )
    )
    );
    }





  ),
    );

  }
}

