import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myhealthyfood_admin/add_items/add_items_model.dart';
import 'package:myhealthyfood_admin/add_items/fetchdata_state.dart';
import 'package:myhealthyfood_admin/add_items/fetchdate_cubit.dart';
import 'package:myhealthyfood_admin/resources/styles_manager.dart';
import 'package:myhealthyfood_admin/responsive.dart';
import 'package:myhealthyfood_admin/search_view.dart';
import 'package:myhealthyfood_admin/utiles.dart';

class Header extends StatelessWidget {
  Header({Key? key, required this.fct, required this.text}) : super(key: key);
  final Function fct;
  final String text;
  var searchcontroller = TextEditingController();
  FocusNode focusNode=FocusNode();

  @override
  Widget build(BuildContext context) {
    final theme = getcolorTheme(context: context).gettheme;
    final color = getcolorTheme(context: context).color;
    List<Food>listsearchfood=[];
    return BlocBuilder<FetchDataCubit, FetchDataState>(
      builder: (context, state)
    {

      return Row(
        children: [
          if(!Responsive.isDesktop(context))
            IconButton(onPressed: () {
              fct();
            }, icon: Icon(Icons.menu)),
          if(Responsive.isDesktop(context))
            Padding(padding: EdgeInsets.all(8),
              child: Text(text, style: getSemiStyle(color: color),),),


          if(Responsive.isDesktop(context))
            Spacer(
              flex: Responsive.isDesktop(context) ? 2 : 1,
            ),
          Expanded(
            flex: Responsive.isDesktop(context) ? 2 : 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0)
              ,
              child: TextFormField(
                focusNode:focusNode ,
                controller: searchcontroller,
                onChanged: (value) {
                  BlocProvider.of<FetchDataCubit>(context).fetchMealsByType(
                      value);
                },
                decoration: InputDecoration(

                  hintText: "Search",
                  fillColor: Theme
                      .of(context)
                      .cardColor,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(10))
                  ),

                  suffixIcon: InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(
                      //     builder: (_) => SearchView()));
                    },
                    child: Icon(Icons.search, size: 25, color: color,),

                  ),
                ),
              ),
            ),
          )


        ],

      );


      },
    );
  }
}
