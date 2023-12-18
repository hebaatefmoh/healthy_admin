// part of 'add_items_cubit.dart';
//
// @immutable
// abstract class AddItemsState {}
//
// class AddItemsInitial extends AddItemsState {
//
//
//
// }
// class AddItemsScuccess extends AddItemsState{
//   final List<FoodItem> fooditems;
//
//   AddItemsScuccess(this.fooditems);
// }
//
//
// class AddItemsError extends AddItemsState{
//   final String error;
//
//   AddItemsError(this.error);
// }

import 'package:equatable/equatable.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
class AddDataState {

}
class initial extends AddDataState{}
class isloading extends AddDataState{}
class success extends AddDataState{
  final List<Food> allfood;

  success(this.allfood);
}
// class isloadingto extends AddDataState{
//
//   isloadingto();
// }
// class fetchData extends AddDataState{
//   final List<Food> allfood;
//
//   fetchData(this.allfood);
// }



