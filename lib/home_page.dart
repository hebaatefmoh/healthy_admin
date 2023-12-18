import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdata_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdate_cubit.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
import 'package:myhealthyfood_admin/allorder_listview.dart';
import 'package:myhealthyfood_admin/custom_addbutton.dart';
import 'package:myhealthyfood_admin/drawer_bloc/menucontroller_cubit.dart';
import 'package:myhealthyfood_admin/product_grid.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';


import 'header.dart';

class DashboardScreen extends StatefulWidget {
   DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


final GlobalKey<ScaffoldState> _scaffoldkey=GlobalKey<ScaffoldState>();
void controllerDashboardMenu(){
  if(!_scaffoldkey.currentState!.isDrawerOpen){
    _scaffoldkey.currentState!.openDrawer();
   // emit(controllerDashboardMenustate());
  }
}
  @override
  Widget build(BuildContext context) {
List<Food> food=[];
    return BlocProvider(
      create: (context) => MenucontrollerCubit(),

      child: BlocBuilder<MenucontrollerCubit, MenucontrollerState>(
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              key:BlocProvider.of<MenucontrollerCubit>(context).getgridscaffoldkey,

    body:
         
          SingleChildScrollView(
          controller: ScrollController(),
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Header(

          fct: () {
          setState(() {
          BlocProvider
              .of<MenucontrollerCubit>(context)
              .getgridscaffoldkey;
          });
          }, text: 'DashBoard',
          ),
          ),
          SizedBox(height: 10,),
          Row(
          children: [
          Expanded(
          flex: 5,
          child: Column(
          children: [
          SizedBox(height: 10,),

          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
          children: [

               AddItemsButton(icon: Icons.slideshow,
                text: "View All",
                color: Colors.blue,
                onpress: () {
                  setState(() {
                    // Navigator.pushNamed(
                    //     context, Routes.splashRoute);
                  //   BlocProvider.of<AddDataCubit>(
                  //       context).;
                   });
                },



),
          Spacer(),
          AddItemsButton(icon: Icons.add,
          text: "Add Items ",
          color: Colors.orange,
          onpress: () {
          Navigator.pushNamed(
          context, Routes.addproduct);
          },),
          ],
          ),
          ),
          SizedBox(height: 20,),


//BlocProvider.of<AddDataCubit>(context).addFoodsToFirestore();
          Responsive(mobile:

          //foods = state.allfood;

          BlocBuilder<AddDataCubit, AddDataState>(
  builder: (context, state) {
    if(state is isloading){
      return CircularProgressIndicator();

    }else if(state is success) {
      return ProductGrid(
        crossAxisCount: Dimensions()
            .width(context) <
            650
            ? 2
            : 4,
        childAspectRatio: Dimensions()
            .width(context) <
            650 &&
            Dimensions().width(context) >
                350
            ? 1.1
            : 0.8,);
    }else{
      return Container();
    }
  },
),


          desktop:

          ProductGrid(
          childAspectRatio: Dimensions()
              .width(
          context) <
          1400 ? 0.8 : 1.05
          ),

          )

          // AllOrderList(),


          ],
          )
          )
          ]
          ),
          ]
          ),
          )
          )


          // }
          // else {
          // return Container();
          // }



      )


          );
    }
      )
    );
  }
  }


