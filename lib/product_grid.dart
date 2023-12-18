
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_cubit.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/add_items_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdata_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdate_cubit.dart';
import 'package:myhealthyfood_admin/allfoods_jsonfile.dart';
import 'package:myhealthyfood_admin/custom_item_of_listview.dart';


class ProductGrid extends StatefulWidget {
  ProductGrid({Key? key, this.crossAxisCount = 4,
    this.childAspectRatio = 1, this.isInMenu = true}) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;
  final bool isInMenu;

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
@override
  void initState() {
 // BlocProvider.of<FetchDataCubit>(context).fetchFoodsFromFirestore();

  // TODO: implement initState
    super.initState();
  }
List<Food>listsearchfood=[];

  @override
  Widget build(BuildContext context) {
  return   BlocBuilder<FetchDataCubit, FetchDataState>(
      builder: (context, state)
  {
    if (state is fetchData ){
      listsearchfood = state.allfood;
          return GridView.builder(
            itemCount: listsearchfood.length,
            shrinkWrap: true,

            physics: NeverScrollableScrollPhysics(),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: widget.crossAxisCount,
                childAspectRatio: widget.childAspectRatio,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15)

            ,
            itemBuilder: (BuildContext context, int index) {
              return CustomItem(
                image: listsearchfood[index].image, title:listsearchfood[index].nameEn,
                description:listsearchfood[index].descriptionEn , Productid: listsearchfood[index].type,
                nutritionalInfoen:listsearchfood[index].nutritionalInfoEn ,
                nutritionalInfoAr: listsearchfood[index].nutritionalInfoAr, descriptionar:listsearchfood[index].descriptionAr  , );
            },


          );}
          else if(state is fetchSearchData){
      listsearchfood = state.allfood;
      return GridView.builder(
          itemCount: listsearchfood.length,
          shrinkWrap: true,

          physics: NeverScrollableScrollPhysics(),

    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: widget.crossAxisCount,
    childAspectRatio: widget.childAspectRatio,
    crossAxisSpacing: 15,
    mainAxisSpacing: 15)

    ,
    itemBuilder: (BuildContext context, int index) {
  return CustomItem(
  image: listsearchfood[index].image, title:listsearchfood[index].nameEn,
  description:listsearchfood[index].descriptionEn , Productid: listsearchfood[index].type,
    nutritionalInfoen:listsearchfood[index].nutritionalInfoEn ,
    nutritionalInfoAr: listsearchfood[index].nutritionalInfoAr , descriptionar:listsearchfood[index].descriptionAr ,
  );

  }
      );
    }
          else{
            return Container();
  }
        }


    );
  }
}
