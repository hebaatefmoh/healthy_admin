import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/drawer_bloc/menucontroller_cubit.dart';
import 'package:myhealthyfood_admin/home_page.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MenucontrollerCubit(),

        child: BlocBuilder<MenucontrollerCubit, MenucontrollerState>(
        builder: (context, state)
    {
      return BlocBuilder<AddDataCubit,AddDataState>(

          builder: (context,state) {

            return Scaffold(
            // key: BlocProvider
            //     .of<MenucontrollerCubit>(context)
            //     .getaddproductscaffoldkey,
            drawer: SideMenu(),
            body: Row(
              children: [
                if(Responsive.isDesktop(context))
                  Expanded(child: SideMenu()),
                Expanded(flex: 5, child: DashboardScreen()),


              ],
            ),
          );
        }
      );

    }
    )
  
  );
  }
}

