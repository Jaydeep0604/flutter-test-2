import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewOrderWidget extends StatelessWidget {
  NewOrderWidget({Key? key,required this.newordermodel}) : super(key: key);
  ItemsModel newordermodel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Palette.white),
      height: 220,
      width: 320,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                    alignment: Alignment.centerLeft, child: Text("Order #")),
              ),
              Text(newordermodel.oCustCount),
              SizedBox(
                width: 90,
              ),
              GestureDetector(
                onTap: () {
                 Fluttertoast.showToast(
                                      msg: "Not Developed",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.SNACKBAR,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                        Palette.cursorcolor,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 28,
                    width: 130,
                    decoration: BoxDecoration(
                        border: Border.all(color: Palette.cursorcolor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/ic_call.png",
                          height: 25,
                          width: 25,
                          color: Palette.cursorcolor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Call restaurant",
                          style: TextStyle(
                              color: Palette.cursorcolor,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Customer Name - ${newordermodel.oCustName}",)),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(newordermodel.oCustAddress)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Align(
                alignment: Alignment.centerRight,
                child: Text(newordermodel.oCustPaymentStatus,
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Container(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                 Fluttertoast.showToast(
                                      msg: "Not Developed",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.SNACKBAR,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                       Colors.green,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  
                },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.green,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Acept Order",
                            style: TextStyle(
                                color: Colors.green, fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                 Fluttertoast.showToast(
                                      msg: "Not Developed",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.SNACKBAR,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                        Palette.cursorcolor,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  
                },
                    child: Container(
                      height: 30,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Palette.cursorcolor,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text("Decline Order",
                              style: TextStyle(
                                  color: Palette.cursorcolor,
                                  fontWeight: FontWeight.bold))),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
