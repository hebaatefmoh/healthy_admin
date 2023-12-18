import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/allorder_listview.dart';
import 'package:myhealthyfood_admin/drawer_bloc/menucontroller_cubit.dart';
import 'package:myhealthyfood_admin/header.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/side_menu.dart';
class OrderWidget extends StatelessWidget {
  const OrderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MenucontrollerCubit(),

        child: BlocBuilder<MenucontrollerCubit, MenucontrollerState>(
            builder: (context, state)
            {
              return SafeArea(
                child: Scaffold(
                  key: BlocProvider
                      .of<MenucontrollerCubit>(context)
                      .getgridscaffoldkey,
                  drawer: SideMenu(),
                  body: Row(
                    children: [
                      if(Responsive.isDesktop(context))
                        Expanded(child: SideMenu()),
                      Expanded(flex: 5, child: SingleChildScrollView(
                        controller: ScrollController(),

                        child: Column(
                            children:[
                              Header(

                                  fct:() {
                                    BlocProvider.of<MenucontrollerCubit>(context)
                                        .controllergridMenu();

                                  }, text: 'MyOrders',
                              ),
                              AllOrderList()
                            ]
                        ),
                      )),


                    ],
                  ),
                ),
              );

            }
        )

    );
  }
}
