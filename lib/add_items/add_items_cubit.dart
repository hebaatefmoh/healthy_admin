import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';




// Cubit
class AddDataCubit extends Cubit<AddDataState> {
  AddDataCubit() : super(initial());






  Future<void> addFoodsToFirestore(List<Food> foodlist) async {
    final CollectionReference foodCollection = FirebaseFirestore.instance.collection('foods');
emit(isloading());
    for (Food food in foodlist) {

    await foodCollection.doc(food.id).set({
        "id":food.id,
      "price":food.price,
      "offerprice":food.offerprice,
        'type': food.type,
        'nameAr': food.nameAr,
        'nameEn': food.nameEn,
        "image":food.image,
        "descriptionAr":food.descriptionAr,
        "descriptionEn":food.descriptionEn,
        "nutritionalInfoAr":food.nutritionalInfoAr,
        "nutritionalInfoEn":food.nutritionalInfoEn,
        "typear":food.typear


      });
      emit(success(foodlist));
    }
  }






}