import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
import 'package:myhealthyfood_admin/every_listitem_details.dart';
import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/routes_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/utiles.dart';


class CustomItem extends StatelessWidget {
  CustomItem({Key? key, required this.image, required this.title,
    required this.description, required this.Productid, required this.nutritionalInfoAr,required this.nutritionalInfoen, required this.descriptionar
   }) : super(key: key);
  //final  Map<String, dynamic> foodData;
final String image;
final String title;

  final String description,descriptionar;
  final String Productid;
  final Map<String, dynamic> nutritionalInfoAr;

  Map<String, dynamic> nutritionalInfoen;
  @override
  Widget build(BuildContext context) {
    final theme = getcolorTheme(context: context).gettheme;
    final color = getcolorTheme(context: context).color;
    final textcolor = theme ? getcolorTheme(context: context).Appcolor
        .withOpacity(.5) : Colors.green.withOpacity(.2);

        return BlocBuilder<AddDataCubit,AddDataState>(

        builder: (context,state) {
      if (state is isloading) {
        return CircularProgressIndicator();
      } else


              if (state is success) {
              foods = state.allfood;

              return Container(
                    width: Dimensions().width(context),
                    height: Dimensions().height(context),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (_)=>
                        ListItemDetails(image: image, title: title,
                            description:description  ,Productid: Productid, nutritionalInfoen: nutritionalInfoen,
                          nutritionalInfoAr: nutritionalInfoAr, descriptionar:descriptionar
                            ,

                            ) ));

                  },



                      child: SingleChildScrollView(
                        child: Column(
                          children: [

                            Container(
                              width: Dimensions().width(context)*.5,
                              height: Responsive.ismobile(context)?Dimensions().height(context)*.15:

                                 Dimensions().height(
                                    context) >
                                    650?  Dimensions().height(context)*.25:Dimensions().height(context),
                              child: Stack(

                                  alignment:
                                  Alignment.bottomCenter,


                                  children: [


                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                        width: Dimensions().width(context),
                                        height: Dimensions().height(context)*.9 ,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                              image: AssetImage(image),
                                            fit: BoxFit.fill

                                          ),
                                        ),

                                        //  child:Text(foodData["type"],)
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: PopupMenuButton(
                                        itemBuilder: (BuildContext context) =>
                                        [

                                          PopupMenuItem(child: Text(
                                            "Edit",
                                            style: getBoldStyle(color: color),),
                                            value: 1,
                                            onTap: () {},),

                                          PopupMenuItem(child: Text(
                                            "Delete",
                                            style: getBoldStyle(color: color),),
                                            value: 2,
                                            onTap: () {},),


                                        ],),
                                    ),





                                  ]


                              ),
                            ),
                            Text(
                              title, style: getRegularStyle(color: color),),
                          ],
                        ),
                      )
                  ),
              );
            }
            else{
              return CircularProgressIndicator();
            }
          }
    );
  }
  }

