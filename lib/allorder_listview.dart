import 'package:flutter/material.dart';
import 'package:myhealthyfood_admin/all_orders.dart';

class AllOrderList extends StatelessWidget {
  const AllOrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12)
    ),


      child: ListView.builder(
          itemCount: 10,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),

          itemBuilder: (context,index){
        return Column(
          children: [
            AllOrdersHome(),
            Divider(thickness: 3,),
          ],
        );

      }
    ),
    );
  }
}
