


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/theme_data/presentation/view_models/dark_theme_cubit.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme=getcolorTheme( context: context).gettheme;
    final color=getcolorTheme( context: context).color;
    final drawercolor=getcolorTheme( context: context).Appcolor;

    return Drawer(
      backgroundColor: drawercolor,
      child:ListView(
        children: [

         // DrawerHeader(child: Image.asset("assets/images/.png")),
          DrawerListTile(title: 'Main Page', press: () {
//Navigator.pop(context);


          }, iconData: Icons.home,

          ),
          // DrawerListTile(title: 'View All Product', press: () {
          //   Navigator.pushNamed(context,  Routes.allorder);
          // }, iconData: Icons.store,
          //
          // ),
          // DrawerListTile(title: 'View All order', press: () {
          //
          //   Navigator.pushNamed(context, Routes.allorder);
          //
          // }, iconData: Icons.shopping_bag,
          //
          // ),
          SwitchListTile(
            title: Text("Theme".tr(context),
                style:
             Responsive.isDesktop(context)?
    getBoldStyle(color: color,):getLightStyle(color: color,),maxLines: 1,overflow: TextOverflow.ellipsis, ),
    secondary: Icon(theme?Icons.dark_mode_outlined:Icons.light_mode_outlined,color:color,
            ),

            value: BlocProvider.of<DarkThemeCubit>(context).getdarkTheme,

            onChanged: (bool value) {
              BlocProvider.of<DarkThemeCubit>(context).setDarkTheme(value);
            },

          )


        ],
      )
    );
  }
}
class DrawerListTile extends StatelessWidget {
   DrawerListTile({Key? key, required this.title, required this.press, required this.iconData}) : super(key: key);
final String title;
final VoidCallback press;
final IconData iconData;
  @override
  Widget build(BuildContext context) {
    final theme=getcolorTheme( context: context).gettheme;
    final color=getcolorTheme( context: context).color;
    final textcolor=getcolorTheme(context: context).Appcolor;
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0,
      leading: Icon(
        iconData,size: 18,color: color,
      ),
      title: Text(
      maxLines: 1,overflow: TextOverflow.ellipsis,
        title,style
          :Responsive.isDesktop(context)?getBoldStyle(color: color,):getLightStyle(color: color,),
      ),
    );
  }
}
