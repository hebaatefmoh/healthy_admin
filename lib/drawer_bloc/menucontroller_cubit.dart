import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'menucontroller_state.dart';

class MenucontrollerCubit extends Cubit<MenucontrollerState> {
  MenucontrollerCubit() : super(controllerDashboardMenustate());

  //final GlobalKey<ScaffoldState> _scaffoldkey=GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _gridscaffoldkey=GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldState> _addproductscaffoldkey=GlobalKey<ScaffoldState>();


// GlobalKey<ScaffoldState> get getScaffoldKey =>_scaffoldkey;
  GlobalKey<ScaffoldState> get getgridscaffoldkey =>_gridscaffoldkey;
  GlobalKey<ScaffoldState> get getaddproductscaffoldkey =>_addproductscaffoldkey;


  // void controllerDashboardMenu(){
  //   if(!_scaffoldkey.currentState!.isDrawerOpen){
  //     _scaffoldkey.currentState!.openDrawer();
  //     emit(controllerDashboardMenustate());
  //   }
  // }
  void controllerAddProductMenu(){
    if(!_addproductscaffoldkey.currentState!.isDrawerOpen){
      _addproductscaffoldkey.currentState!.openDrawer();
      emit(controllerAddProductMenustate());

    }
  }
  void controllergridMenu(){
    if(!_gridscaffoldkey.currentState!.isDrawerOpen){
      _gridscaffoldkey.currentState!.openDrawer();
      emit(controllergridMenustate());

    }
  }

}
