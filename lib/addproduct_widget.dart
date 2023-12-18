
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myhealthyfood_admin/add_products/add_products/cubit.dart';
import 'package:myhealthyfood_admin/add_products/add_products/state.dart';

import 'package:myhealthyfood_admin/custom_addbutton.dart';
import 'package:myhealthyfood_admin/custom_button.dart';
import 'package:myhealthyfood_admin/drawer_bloc/menucontroller_cubit.dart';
import 'package:myhealthyfood_admin/header.dart';

import 'package:myhealthyfood_admin/resources/dimensions.dart';
import 'package:myhealthyfood_admin/resources/font_manager.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/resources/values_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/side_menu.dart';
import 'package:myhealthyfood_admin/utiles.dart';
import 'package:image_picker/image_picker.dart';
import 'package:uuid/uuid.dart';

class AddProductScreen extends StatelessWidget {



  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  // File? _pickedimage;
  // Uint8List webimage = Uint8List(8);\
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  //
  // final TextEditingController _titlecontroller = TextEditingController();
  //
  // final TextEditingController _descriptionofproduct = TextEditingController();
  //
  // final TextEditingController _Nutirianconsists = TextEditingController();
  //
  // final TextEditingController _countCalories = TextEditingController();
  // final TextEditingController _pricecontroller = TextEditingController();
  //
  // String catvalue = "vegetables";

  @override
  Widget build(BuildContext context) {
    // String imgurl;
    // final _uid=Uuid().v4();
    var addproduct = BlocProvider.of<Addproductscubit>(context);
    final theme = getcolorTheme(context: context).gettheme;
    final color = getcolorTheme(context: context).color;
    final textcolor = theme
        ? getcolorTheme(context: context).Appcolor.withOpacity(.5)
        : Colors.green.withOpacity(.2);
    return BlocProvider(
        create: (context) => MenucontrollerCubit(),
        child: BlocBuilder<MenucontrollerCubit, MenucontrollerState>(
            builder: (context, state) {
          return SafeArea(
            child: Scaffold(
                key: BlocProvider.of<MenucontrollerCubit>(context)
                    .getgridscaffoldkey,
                drawer: const SideMenu(),
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (Responsive.isDesktop(context))
                          const Expanded(child: SideMenu()),
                        Expanded(
                            flex: 4,
                            child: SingleChildScrollView(
                                child: Center(
                              child: Container(
                                width: Dimensions().width(context),
                                height: Dimensions().height(context),
                                child: SingleChildScrollView(
                                  child: Center(
                                    child: Column(children: [
                                      Header(
                                        fct: () {
                                          BlocProvider.of<MenucontrollerCubit>(
                                                  context)
                                              .controllergridMenu();
                                        },
                                        text: 'Add Products',
                                      ),
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            width: Dimensions().width(context) >
                                                    650
                                                ? 650
                                                : Dimensions().width(context),
                                            height:
                                                Dimensions().height(context),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              //  color: textcolor,
                                            ),
                                            child: BlocBuilder<Addproductscubit,
                                                AddproductsState>(
                                              builder: (context, state) {
                                                return SingleChildScrollView(
                                                  child: Form(
                                                      key: formkey,
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Container(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Stack(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                //  mainAxisAlignment: MainAxisAlignment.center,
                                                                // crossAxisAlignment: CrossAxisAlignment.center,
                                                                children: [
                                                                  Container(
                                                                    width: Dimensions().width(context) >
                                                                            650
                                                                        ? 650
                                                                        : Dimensions().width(context) *
                                                                            0.9,
                                                                    height:
                                                                        Dimensions().height(context) *
                                                                            .3,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                12),
                                                                        color:
                                                                            textcolor,
                                                                        border: Border.all(
                                                                            color:
                                                                                Colors.black54)),
                                                                    child: Center(
                                                                        child: addproduct.pickedimage == null
                                                                            ? Column(
                                                                                mainAxisAlignment: MainAxisAlignment.center,
                                                                                children: [
                                                                                  const Icon(
                                                                                    Icons.image,
                                                                                    size: 25,
                                                                                  ),
                                                                                ],
                                                                              )
                                                                            : kIsWeb
                                                                                ? Container(
                                                                                    width: double.infinity,
                                                                                    child: Image.memory(
                                                                                      addproduct.webimage,
                                                                                      fit: BoxFit.fill,
                                                                                    ),
                                                                                  )
                                                                                : ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      child: Image.file(
                                                                                        addproduct.pickedimage!,
                                                                                        fit: BoxFit.fill,
                                                                                      ),
                                                                                    ),
                                                                                  )),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            addproduct.pickimage(context);
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            "choose Image",
                                                                            style:
                                                                                getBoldStyle(color: Colors.blue),
                                                                          )),
                                                                      TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            addproduct.pickedimage =
                                                                                null;
                                                                            addproduct.webimage =
                                                                                Uint8List(8);
                                                                          },
                                                                          child:
                                                                              Text(
                                                                            "clear image",
                                                                            style:
                                                                                getBoldStyle(color: color),
                                                                          ))
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              TextFormField(
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "please enter title";
                                                                  }
                                                                },
                                                                controller:
                                                                    addproduct
                                                                        .titlecontroller,
                                                                onChanged:
                                                                    (value) {
                                                                  addproduct
                                                                      .titlecontroller
                                                                      .text = value;
                                                                },
                                                                onFieldSubmitted:
                                                                    (value) {
                                                                  addproduct
                                                                      .titlecontroller
                                                                      .text = value;
                                                                },
                                                                style:
                                                                    TextStyle(
                                                                  color: color,
                                                                ),
                                                                decoration:
                                                                    const InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  label: Text(
                                                                      "Enter Title"),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              TextFormField(
                                                                style: TextStyle(
                                                                    color:
                                                                        color),
                                                                controller:
                                                                    addproduct
                                                                        .descriptionofproduct,
                                                                onChanged:
                                                                    (value) {
                                                                  addproduct
                                                                      .descriptionofproduct
                                                                      .text = value;
                                                                },
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "please enter title";
                                                                  }
                                                                  ;
                                                                },
                                                                onFieldSubmitted:
                                                                    (value) {
                                                                  addproduct
                                                                      .descriptionofproduct
                                                                      .text = value;
                                                                },
                                                                decoration:
                                                                    const InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  label: Text(
                                                                      "Enter Desription"),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 20,
                                                              ),
                                                              TextFormField(
                                                                style: TextStyle(
                                                                    color:
                                                                        color),
                                                                controller:
                                                                    addproduct
                                                                        .Nutirianconsists,
                                                                onChanged:
                                                                    (value) {
                                                                  addproduct
                                                                      .Nutirianconsists
                                                                      .text = value;
                                                                },
                                                                onFieldSubmitted:
                                                                    (value) {
                                                                  addproduct
                                                                      .Nutirianconsists
                                                                      .text = value;
                                                                },
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return "please enter title";
                                                                  }
                                                                  ;
                                                                },
                                                                decoration:
                                                                    const InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  label: Text(
                                                                      "Nutrion"),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(
                                                                        20.0),
                                                                child:
                                                                    Container(
                                                                  width: 200,
                                                                  margin:
                                                                      EdgeInsets
                                                                          .all(
                                                                              20),
                                                                  child:
                                                                      TextFormField(
                                                                    style: TextStyle(
                                                                        color:
                                                                            color),
                                                                    keyboardType:
                                                                        TextInputType
                                                                            .text,
                                                                    controller:
                                                                        addproduct
                                                                            .pricecontroller,
                                                                    validator:
                                                                        (value) {
                                                                      if (value!
                                                                          .isEmpty) {
                                                                        return "please enter price";
                                                                      }
                                                                      ;
                                                                    },
                                                                    decoration:
                                                                        const InputDecoration(
                                                                      label:
                                                                          Text(
                                                                        "Enter Price",
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  AddItemsButton(
                                                                      icon: Icons
                                                                          .add_box,
                                                                      text:
                                                                          "Update ",
                                                                      color: Colors
                                                                          .green,
                                                                      onpress:
                                                                          () async {


                                                                          if (formkey
                                                                              .currentState!
                                                                              .validate()) {
                                                                            BlocProvider.of<Addproductscubit>(context).Addproductmethod(context);
                                                                          }

                                                                      }),
                                                                  AddItemsButton(
                                                                    icon: Icons
                                                                        .clear_outlined,
                                                                    text:
                                                                        "Clear Item",
                                                                    color: Colors
                                                                        .grey,
                                                                    onpress:
                                                                        () {
                                                                      addproduct
                                                                          .clear();

                                                                      // addproduct.pickedimage =
                                                                      //     addproduct.imgurl;
                                                                      addproduct
                                                                              .webimage =
                                                                          Uint8List(
                                                                              8);
                                                                    },
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )),
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                ),
                              ),
                            ))),
                      ]),
                )),
          );
        }));
  }

}
