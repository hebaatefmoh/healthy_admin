



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/listtile.dart';
import 'package:myhealthyfood_admin/resources/color_manager.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class ListItemDetails extends StatelessWidget {


    ListItemDetails({Key? key, required this.image,
     required this.title, required this.description,
     required this.Productid, required this.nutritionalInfoen, required this.nutritionalInfoAr, required this.descriptionar,}) : super(key: key);

final String image,title,description,descriptionar;
final String Productid;
    final Map<String, dynamic> nutritionalInfoAr;

    Map<String, dynamic> nutritionalInfoen;

  @override
  Widget build(BuildContext context) {
   // final productid=ModalRoute.of(context)!.settings.arguments as String;

    Color color=getcolorTheme(context: context).color;
    Color appcolor=getcolorTheme(context: context).Appcolor;


    return BlocProvider(
  create: (context) => AddDataCubit(),
  child: BlocBuilder<AddDataCubit, AddDataState>(

        builder: (context, state) {
          return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      expandedHeight: 280,
                      flexibleSpace: FlexibleSpaceBar(
                          background: Image.asset(
                            image,

                            fit: BoxFit.cover,
                          )
                      ),


                    ),
                    SliverAnimatedList(
                        initialItemCount: 1,
                        itemBuilder: (BuildContext context, int index, Animation<
                            double> animation) {
                          return SingleChildScrollView(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: appcolor
                              ),
                              child: Column(
                                children: [
                                  SizedBox(

                                    width: Dimensions().width(context),
                                    height: Dimensions().height(context) * .4,

                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [

                                        Center(
                                          child: Text(
                                            title,
                                            style: getBoldStyle(color: color),),

                                        ),
                                        SizedBox(height: 20,),
                                        Text(
                                          description,
                                          style: getMediumStyle(color: color),),

                            Divider(height: 10, color: ColorManager.black,),

                            Text(
                              descriptionar,
                              style: getMediumStyle(color: color),
                            ),
                                      ],
                                    ),

                                  ),
                                  Divider(height: 10, color: ColorManager.black,),

                                  Text("Ingredients",
                                    style: getBoldStyle(
                                        color: Colors.green),),
                                  SizedBox(height: 20,),
                                  Text(
                                    nutritionalInfoen
                                        .toString(),textAlign: TextAlign.left,),

                          Divider(height: 10, color: ColorManager.black,),

                          // Text("Ingredients",
                          // style: getBoldStyle(
                          // color: Colors.green),),
                          // // SizedBox(height: 20,),
                          // Text(
                          // nutritionalInfoAr
                          //     .toString(),textAlign: TextAlign.left,),
                                //  SizedBox(height: 70,),

                                ],
                              ),


                            ),
                          );
                        }
                    ),

                  ],
                ),
                // CustomButton(text: "Add To Cart",
                //   width: Dimensions().width(context) * .8,
                //   function: () {
                //
                //   },)


              ],
            ),
          ),
        );




      }
),
);
  }
}
