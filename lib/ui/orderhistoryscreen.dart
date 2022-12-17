
import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/newordersscreen.dart';
import 'package:fluttertest2/widgets/neworderwidget.dart';
import 'package:fluttertest2/widgets/orderhistorywidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({ Key? key }) : super(key: key);

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
   List<ItemsModel> orderhistory = [
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "110", "10", "10567", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "109", "11", "10566", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "108", "12","10565", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "107", "14", "10564", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "106", "15", "10563", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "105", "15", "10562", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "104", "15", "10561", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "103", "16", "10560", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "102", "16", "10559", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "101", "17", "10558", "Jaydeep", "2022-10-22", "09:00:52", "Delivered"),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        backgroundColor: Palette.editprofilebackgroundColor,
        body: SafeArea(
          child: Column(
          children: [
            Container(
              color: Palette.appbackgroundColor,
              height: 60,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 10),
                    child: GestureDetector(
                       onTap: (() {
                                      Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NewOrdersScreen()),
                                            );
                                    }),
                      child: ImageIcon(
                        AssetImage(
                          "assets/ic_back.png",
                        ),
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 15),
                    child: Text(
                      "Order History",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                  SizedBox(width: 140,),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: GestureDetector(
                       onTap: (() {
                                     Fluttertoast.showToast(
                                        msg: "Not Developed",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.SNACKBAR,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor:
                                          Palette.cursorcolor,
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                    }),
                      child: ImageIcon(
                        AssetImage(
                          "assets/ic_filter.png",
                        ),
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
                            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                            child: Column(
                              children: [
                                TextFormField(
                                   cursorColor: Palette.cursorcolor,
                                  keyboardType: TextInputType.number,
                                  // inputFormatters: [
                                  //   LengthLimitingTextInputFormatter(8)
                                  // ],
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Palette.white,
                                    contentPadding: const EdgeInsets.all(10),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                     
                                    ),
                                    border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10)
                                                   ),
                                                   disabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              focusedErrorBorder:  OutlineInputBorder(
                                                borderSide: const BorderSide(width: 3, color: Colors.white),
                                                borderRadius: BorderRadius.circular(10),
                                                
                                              ),
                                   hintText: 'Enter Order Number',
                                   suffixIcon: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Container(
                                          height: 35,
                                          width: 35,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Palette.cursorcolor),
                                          child: Image.asset(
                                            'assets/ic_search.png',
                                            color: Palette.white,
                                          ),
                                        ),
                                      ),
                                  ),
                                  // controller: emailCtr,
                                )
                              ],
                            ),
                          ),
                Expanded(
                child: Container(
              padding: EdgeInsets.all(15),
              child: ListView.separated(
                itemCount: orderhistory.length,
                itemBuilder: (context, index) {
                  return OrderHistoryWidget(orderhistory: orderhistory[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                return Padding(
                        padding:
                            const EdgeInsets.only(left: 0, right: 0, top: 17),
                        child: new Divider(
                          color: Palette.textColor,
                        ));
                },
              ),
            ))
            
          ],
        )),
      ),
    );
  }
}