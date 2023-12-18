import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdata_state.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';




// Cubit
class FetchDataCubit extends Cubit<FetchDataState> {
  FetchDataCubit() : super(initialfetch());
List<Food> foods=[];
      Future<void> fetchFoodsFromFirestore() async {
    final CollectionReference foodCollection = FirebaseFirestore.instance.collection('foods');
    QuerySnapshot querySnapshot = await foodCollection.get();
emit(isloadingto());
    foods = querySnapshot.docs.map((DocumentSnapshot doc) {
      Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
      return Food(
        type: data['type'],
        nameAr: data['nameAr'],
        nameEn: data['nameEn'], image:data['image'] , descriptionAr: data['descriptionAr']
        , descriptionEn: data['descriptionEn'], nutritionalInfoAr:data['nutritionalInfoAr'] ,
        nutritionalInfoEn: data['nutritionalInfoEn'],  typear: data["typear"], id: data["id"],
        price: data["price"], offerprice: data["offerprice"],
      );
    }).toList();

    emit(fetchData(foods));
  }

  Future<void> fetchMealsByType(String mealType) async {
    try {
      // emit(isloadingto());
      emit(isloadingSearch());

      final CollectionReference foodCollection = FirebaseFirestore.instance
          .collection('foods');
      QuerySnapshot querySnapshot = await foodCollection.
      where('nameEn', isEqualTo: mealType)
          .get();

      foods = querySnapshot.docs.map((DocumentSnapshot doc) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;

        //cartItems = querySnapshot.docs.map((doc) =>

        return Food(
          type: data['type'],
          nameAr: data['nameAr'],
          nameEn: data['nameEn'],
          image: data['image'],
          descriptionAr: data['descriptionAr']
          ,
          descriptionEn: data['descriptionEn'],
          nutritionalInfoAr: data['nutritionalInfoAr'],
          nutritionalInfoEn: data['nutritionalInfoEn'],
          id: data["id"],
          price: data["price"], offerprice: data["offerprice"],
         typear: data["typear"],);
      }).toList();

      emit(fetchSearchData(foods));
    } catch (e) {
      print("Error fetching meals: $e");
    }
  }




  }
