part of 'home_pge_bloc.dart';

@immutable
 class HomePgeState {

  final int index;

  const HomePgeState({this.index=0});


HomePgeState copywith({
  int? index
}){

 return HomePgeState(index: index?? this.index ) ;
}}