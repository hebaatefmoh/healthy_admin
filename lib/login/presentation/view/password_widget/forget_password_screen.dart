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

class ForgetPassword extends StatelessWidget {
  ForgetPassword({Key? key}) : super(key: key);
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController emailAdrees = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Color color=getcolorTheme(context: context).color;

    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: Container(
              width:Dimensions().width(context),
          height:Dimensions().height(context),


          decoration: const BoxDecoration(
          // image: DecorationImage(
          //
          // image: AssetImage(
          //
          //
          // ImageAssets.restraunt,
          //
          //
          // ),fit: BoxFit.cover),


          ),


           child:   Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Align(alignment: Alignment.topLeft,

                            child: CustomBackButton()),
                        const SizedBox(height: 30,),
                        Center(child: Text("Forget Password".tr(context),
                          style: getBoldStyle(color:    color
                        ),)),
                        const SizedBox(height: 10,),


                        Container(
                          padding: const EdgeInsets.all(20),
                          child: Text("Dont worry please enter the address"
                              " you associate with your account".tr(context),
                            maxLines: 2,

                            overflow: TextOverflow.fade,
                            style: getBoldStyle(color: color),),
                        ),


                        const SizedBox(height: 50,),

                        Form(
                          key: formkey,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [

                                TextFormFieldScreen(
                                  controller: emailAdrees,
                                  validator: (value) {
                                    
                                    return null;
                                  },
                                  functionontap: () {

                                  },
                                  onchange: (value) {
                                    context.read<LoginBloc>().add(
                                        EmailLoginEvent(value));
                                  },
                                  obsecure: false,
                                  name: "Enter Your Email Address".tr(context),
                                  type: TextInputType.emailAddress,),

                                const SizedBox(height: 20,),
                                CustomButton(text: "submit".tr(context),
                                  function: () async {


                                     SignInController(context).handleForgetPassword();



                                  },
                                  width: Dimensions().width(context)*.2,
                                ),


                              ],
                            ),
                          ),
                        ),
                      ]
                  ),

                ),
              ),
            ),
            )
          );
        },
      ),
    );
  }
}
