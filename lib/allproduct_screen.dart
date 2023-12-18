import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/addproduct_widget.dart';
import 'package:myhealthyfood_admin/allproduct_screen.dart';
import 'package:myhealthyfood_admin/app_localization.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/drawer_bloc/menucontroller_cubit.dart';
import 'package:myhealthyfood_admin/header.dart';
import 'package:myhealthyfood_admin/home_page.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_cubit.dart';
import 'package:myhealthyfood_admin/language/presentation/view_model/language_cubit/language_state.dart';
import 'package:myhealthyfood_admin/mainscreen.dart';
import 'package:myhealthyfood_admin/order_screen.dart';
import 'package:myhealthyfood_admin/product_grid.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/font_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/resources/values_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/side_menu.dart';
import 'package:myhealthyfood_admin/utiles.dart';

// class AllProductScreen extends StatefulWidget {
//   const AllProductScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AllProductScreen> createState() => _AllProductScreenState();
// }
//
// class _AllProductScreenState extends State<AllProductScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return  BlocProvider(
//         create: (context) => MenucontrollerCubit(),
//
//         child: BlocBuilder<MenucontrollerCubit, MenucontrollerState>(
//         builder: (context, state)
//     {
//     return SafeArea(
//       child: Scaffold(
//         key: BlocProvider
//             .of<MenucontrollerCubit>(context)
//             .getgridscaffoldkey,
//         drawer: SideMenu(),
//         body: Row(
//           children: [
//             if(Responsive.isDesktop(context))
//               Expanded(child: SideMenu()),
//             Expanded(flex: 5, child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children:[
//                     Header(
//
//                         fct:() {
//                           BlocProvider.of<MenucontrollerCubit>(context)
//                               .controllergridMenu();
//
//                         }, text: 'AllProducts',
//                     ),
//                     Responsive(mobile:
//                     ProductGrid(crossAxisCount: Dimensions().width(context)<650?2:4,
//                       childAspectRatio:  Dimensions().width(context)<650&&
//                           Dimensions().width(context)>350?1.1:0.8, isInMenu: false,),
//                       desktop:
//
//                       ProductGrid(
//                           childAspectRatio:  Dimensions().width(context)<1400?0.8:1.05,
//                         isInMenu: false,
//                       ),
//
//                     )
//                   ]
//                 ),
//               ),
//             )),
//
//
//           ],
//         ),
//       ),
//     );
//
//     }
//         )
//
//     );
//   }
// }
