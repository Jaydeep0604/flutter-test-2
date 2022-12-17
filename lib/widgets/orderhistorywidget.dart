
import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';

class OrderHistoryWidget extends StatelessWidget {
OrderHistoryWidget({ Key? key,required this.orderhistory }) : super(key: key);
ItemsModel orderhistory;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 320,
            decoration: BoxDecoration(
              color: Palette.editprofilebackgroundColor
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.centerLeft, child: Text("Order # ${orderhistory.hOrderCount}",style: TextStyle(fontWeight:FontWeight.bold),)),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.centerLeft, child: Text("Customer Name - ${orderhistory.hCustName}")),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.centerLeft, child: Text("${orderhistory.hOrderDate} ${orderhistory.hOrderTime}")),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Row(
                    children: [
                      Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Align(alignment: Alignment.centerLeft, child: Text("${orderhistory.hOrderstatus}",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)),
                ),
                SizedBox(width: 110,),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 35,
                        width: 130,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Palette.vieworderbackcolor,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Align(
                            alignment: Alignment.center,
                            child: Text("View Order details",
                                style: TextStyle(
                                    color: Palette.vieworderbackcolor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))),
                      ),
                  ),
                ),
                SizedBox(height: 5,)
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}