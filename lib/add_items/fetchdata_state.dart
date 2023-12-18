import 'add_items_model.dart';

class FetchDataState {

}
class initialfetch extends FetchDataState{}

class isloadingto extends FetchDataState{

  isloadingto();
}
class fetchData extends FetchDataState{
  final List<Food> allfood;

  fetchData(this.allfood);
}

class isloadingSearch extends FetchDataState{

  isloadingSearch();
}
class fetchSearchData extends FetchDataState{
  final List<Food> allfood;

  fetchSearchData(this.allfood);
}