import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
import 'package:myhealthyfood_admin/firebase_options.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';


class Splash extends StatefulWidget {
  Splash({super.key,});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    late String initialRpute;


    Future.delayed(Duration(milliseconds: 500), ()async {
    //  BlocProvider.of<AddDataCubit>(context).addFoodsToFirestore(foods);

      await Firebase.initializeApp(

          options: DefaultFirebaseOptions.currentPlatform);
      FirebaseAuth.instance.authStateChanges().listen((user) {
        if (user != null) {
          Navigator.pushNamed(context, Routes.homepage);

        } else {
          Navigator.pushNamed(context, Routes.loginRoute);
        }
      }

      );

    });

        //
      //
    //  BlocProvider.of<AddDataCubit>(context).addFoodsToFirestore();

      // BlocProvider.of<FoodCubit>(context,).fetchFoodsFromFirestore();
     //
      // Navigator.pushNamed(context, Routes.homepage);
    //});
    // TODO: implement initState
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,

        //child:
        // GestureDetector(
        //   onTap: (){
        //    BlocProvider.of<AddDataCubit>(context).addFoodsToFirestore(foods);
        // Navigator.pushNamed(context, Routes.homepage);
        //   },
        //   child: Center(
        //     child: Container(
        //       width:200,
        //
        //       height: 80,
        //       color: Colors.black54.withOpacity(.4),
        //       child: Center(child: Text("Add Products",style: getBoldStyle(color: Colors.black),)),
        //
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
