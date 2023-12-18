
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/fetchdate_cubit.dart';
import 'package:myhealthyfood_admin/add_products/add_products/cubit.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/firebase_options.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/splash.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view/theme_manager.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_cubit.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_state.dart';

import 'language/presentation/view_model/language_cubit/language_cubit.dart';
import 'language/presentation/view_model/language_cubit/language_state.dart';



late String initialRpute;

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform);
      FirebaseAuth.instance.authStateChanges().listen((user) {
        if (user != null ) {
          initialRpute = Routes.homepage;

        }else{
          initialRpute = Routes.loginRoute;
        }

  runApp( MyApp());
});
      }

class MyApp extends StatelessWidget {
  MyApp({super.key,});
var emailcontroller=TextEditingController();
var password=TextEditingController();
GlobalKey<FormState> formkey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    bool _isdark = false;
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
            LanguageCubit()
              ..getSavedLanguage(),
          ),
          BlocProvider(create: (context) =>
          DarkThemeCubit()
            ..setDarkTheme(_isdark),

          ),


          BlocProvider(create: (context) =>
          AddDataCubit()..addFoodsToFirestore(foods),

          ),
          BlocProvider(create: (context) =>
              FetchDataCubit()..fetchFoodsFromFirestore()

          ),
          BlocProvider(create: (context) =>
          Addproductscubit()

          ),
        ],

        child: BlocBuilder<DarkThemeCubit, DarkThemeState>(
            builder: (context, state) {
              return BlocBuilder<LanguageCubit, LanguageState>(
                  builder: (context, state) {
                    if (state is changeLocalState) {

                      return MaterialApp(

                        locale: state.locale,
                        supportedLocales: [
                          Locale("en"),
                          Locale("ar"),


                        ],
                        localizationsDelegates: [
                          AppLocalizations.delegate,

                          GlobalMaterialLocalizations.delegate,
                          GlobalWidgetsLocalizations.delegate,
                          GlobalCupertinoLocalizations.delegate


                        ],
                        localeResolutionCallback: (deviceLocal,
                            supportedLocales) {
                          for (var local in supportedLocales) {
                            if (deviceLocal != null &&
                                deviceLocal.languageCode ==
                                    local.languageCode) {
                              return deviceLocal;
                            }
                          }
                          return supportedLocales.first;
                        },
                        debugShowCheckedModeBanner: false,
                        title: ' Food Appy',
                        theme: StylesTheme.getApplicationTheme(
                            BlocProvider.of<DarkThemeCubit>(context).getdarkTheme, context),

                        onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: initialRpute,
                        //home: Splash(),

                      );


                    } else {
                      return SizedBox();
                    }
                  }

              );
            }
        )
    );
  }

}









