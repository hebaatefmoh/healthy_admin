
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/page_view_model.dart';
import 'package:myhealthyfood_admin/register_screens/data/models/register_controller.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view/text_formfield.dart';
import 'package:myhealthyfood_admin/register_screens/presentation/view_model/sign_up_bloc/rigester_bloc.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';




class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;
    Color appcolor=getcolorTheme(context: context).Appcolor;

    return SafeArea(
        child: BlocProvider(
      create: (context) => RigesterBloc(),
      child: BlocBuilder<RigesterBloc, RegisterState>(
        builder: (context, state) {
          return Scaffold(


              body: Stack(
                children: [
                  SingleChildScrollView(child: HomePageView()),

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
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("Register Now".tr(context),
                            style: getSemiBoldStyle(color: appcolor),)),
                          const SizedBox(height: 100,),


                          Form(
                            key: formkey,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [

                                  // const SizedBox(
                                  //   height: 15,
                                  // ),


                                  TextFormFieldScreen(
                                    name: "Name".tr(context),
                                    icon: Icons.people_outline_sharp,

                                    onchange:(value){
                                      context.read<RigesterBloc>().add(NameRegisterEvent(value));
                                    },


                                    type: TextInputType.text,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  TextFormFieldScreen(
                                      name: "Email".tr(context),
                                      icon: Icons.email,
                                      type: TextInputType.emailAddress,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(EmailRegisterEvent(value));
                                    },
                                     ),
                                  const SizedBox(
                                    height: 20,
                                  ),

                                  TextFormFieldScreen(
                                    name: "password".tr(context),
                                    obsecure: BlocProvider.of<RigesterBloc>(context).obsecuretext,

                                    icon: Icons.lock_clock_rounded,
                                    type: TextInputType.visiblePassword,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(passwordRegisterEvent(value));
                                    },
                                    suffix: IconButton(onPressed: () {
                                      BlocProvider.of<RigesterBloc>(context)
                                          .changeObsecureTextevent();
                                    },

    icon: BlocProvider.of<RigesterBloc>(context).icon

                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  TextFormFieldScreen(
                                    name: "retype password".tr(context),
                                    obsecure: BlocProvider.of<RigesterBloc>(context).obsecuretext,
                                    icon: Icons.password,
                                    type: TextInputType.visiblePassword,
                                    onchange:(value){
                                      context.read<RigesterBloc>().add(ReTypepasswordRegisterEvent(value));
                                    },
                                    suffix: IconButton(onPressed: () {
                                      BlocProvider.of<RigesterBloc>(context)
                                          .changeObsecureTextevent();
                                    },

                                        icon: BlocProvider.of<RigesterBloc>(context).icon

                                    ),
                                  ),

                                  const SizedBox(
                                    height: 30,
                                  ),
                                  CustomButton(
                                    width: Dimensions().width(context)*.6,
                                    text: "SignUp".tr(context),
                                      function:(){
                                        RegisterController(context).handleSignIn();

                                      }

                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),



                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Already have anaccount?".tr(context),
                                        style:getRegularStyle(color: ColorManager.white),),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, Routes.loginRoute);
                                          },
                                          child: Text(
                                            "SignIn".tr(context),
                                            style: getBoldStyle(
                                                color: color),
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ]),
            ),
          ),
                  ),


                ],
              ));
        },
      ),
    ));
  }



}
