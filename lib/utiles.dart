import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_cubit.dart';


class getcolorTheme{
  BuildContext context;
  getcolorTheme({required this.context});


  bool  get gettheme=>BlocProvider.of<DarkThemeCubit>(context).getdarkTheme;
  Color get color=> gettheme?ColorManager.white :ColorManager.black;
  Color get Appcolor=> gettheme?ColorManager.black :ColorManager.white;

  // Color get bottomnavbar=> gettheme?ColorManager.black :ColorManager.white;




}