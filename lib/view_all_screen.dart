import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/fetchdata_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdate_cubit.dart';
import 'package:myhealthyfood_admin/product_grid.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title:Text( "AllProduct",style: getSemiBoldStyle(color: Colors.black),),centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Responsive(mobile:
            BlocBuilder<FetchDataCubit,FetchDataState>(

              builder:(context,state)=> ProductGrid(
                crossAxisCount: Dimensions().width(context) <
                    650
                    ? 2
                    : 4,
                childAspectRatio: Dimensions().width(context) <
                    650 &&
                    Dimensions().width(context) > 350
                    ? 1.1
                    : 0.8,),
            ),
              desktop:

              BlocBuilder<FetchDataCubit,FetchDataState>(

                builder:(context,state)=> ProductGrid(
                    childAspectRatio: Dimensions().width(
                        context) <
                        1400 ? 0.8 : 1.05
                ),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
