import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myhealthyfood_admin/add_products/add_products/state.dart';
import 'package:uuid/uuid.dart';


class Addproductscubit extends Cubit<AddproductsState> {
  Addproductscubit() : super(addinitial());



    final TextEditingController titlecontroller = TextEditingController();

    final TextEditingController descriptionofproduct = TextEditingController();

    final TextEditingController Nutirianconsists = TextEditingController();

    final TextEditingController countCalories = TextEditingController();
    final TextEditingController pricecontroller = TextEditingController();

  final TextEditingController type = TextEditingController();

  final TextEditingController offerprice = TextEditingController();
  final TextEditingController typeAr = TextEditingController();

    File? pickedimage;
    Uint8List webimage = Uint8List(8);

    String imgurl="";
    final _uid = Uuid().v4();

    Future<void> Addproductmethod( BuildContext context) async {
      if (pickedimage == null) {
        return showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Column(
                  children: [
                    const Text("no image has been picked"),
                  ],
                ),
              );
            });
      }
      else {
        final ref =  FirebaseStorage.instance.
        ref().child("userimages").child(_uid + ".jpg");
        if (kIsWeb) {
          await ref.putData(webimage);
        }
        else {
          await ref.putFile(pickedimage!);
        }
        imgurl = await ref.getDownloadURL();
        //    }
        await FirebaseFirestore
            .instance
            .collection(
            "products").doc(_uid).set
          ({
         // "type": titlecontroller.text,
          "id": _uid,
          "image": imgurl,

          "nameAr":
          titlecontroller
              .text,
          "nameEn":
          titlecontroller
              .text,
          "descriptionEn":
          descriptionofproduct
              .text,
          "nutritionalInfoEn":
          Nutirianconsists
              .text,
          "descriptionAr": descriptionofproduct
              .text,
          "nutritionalInfoAr":Nutirianconsists
              .text,
         // "typeAr":typeAr.text,
           "price":pricecontroller.text,
          // "type":type.text,
          // "offerprice":offerprice.text,


        });

        titlecontroller
            .clear();
        descriptionofproduct
            .clear();
        countCalories
            .clear();
        Nutirianconsists
            .clear();
        pricecontroller
            .clear();
      }
      emit(success());
    }

    Future<void> pickimage(BuildContext context) async {
      if (!kIsWeb) {
        final ImagePicker _picker = ImagePicker();
        XFile? image = await _picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          var select = File(image.path);

          pickedimage = select;
        } else {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      const Text("no image has been picked"),
                    ],
                  ),
                );
              });
        }
      } else if (kIsWeb) {
        final ImagePicker _picker = ImagePicker();
        XFile? image = await _picker.pickImage(source: ImageSource.gallery);
        if (image != null) {
          var f = await image.readAsBytes();

          webimage = f;
          pickedimage = File("a");
        }
      }
    }


void clear(){
  titlecontroller
      .clear();
  descriptionofproduct
      .clear();
  countCalories
      .clear();
  Nutirianconsists
      .clear();
  pricecontroller
      .clear();
}}