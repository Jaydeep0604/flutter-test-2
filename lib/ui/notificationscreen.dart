import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/newordersscreen.dart';
import 'package:fluttertest2/widgets/notificationwidget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<ItemsModel> notificationlist = [
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "116", "1", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "115", "1", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "114", "2", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "113", "3", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "112", "5", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "111", "10", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "110", "10", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "109", "11", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "108", "12", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "107", "14", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "106", "15", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "105", "15", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "104", "15", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "103", "16", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "102", "16", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
    ItemsModel("id", "oCustCount", "oCustName", "oCustAddress", "oCustPaymentStatus", 
    "101", "17", "hOrderCount", "hCustName", "hOrderDate", "hOrderTime", "hOrderstatus"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.editprofilebackgroundColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Palette.appbackgroundColor,
            height: 50,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewOrdersScreen()),
                        );
                      }),
                      child: ImageIcon(
                        AssetImage(
                          "assets/ic_back.png",
                        ),
                        size: 30,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 10),
                  child: Container(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "New Notification",
                          style:
                              TextStyle(fontSize: 15, color: Palette.textColor),
                        )),
                  ),
                ),
          ),
        Expanded(
                    child: Container(
                  padding: EdgeInsets.all(15),
                  child: ListView.separated(
                  
                    primary: false,
                    itemCount: notificationlist.length,
                    itemBuilder: (context, index) {
                      return NotificationWidget(
                          notificationmodel: notificationlist[index]);
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 5,
                      );
                    },
                  ),
                ))
          // Expanded(
          //     child: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.only(left: 10),
          //         child: Container(
          //           child: Align(
          //               alignment: Alignment.centerLeft,
          //               child: Text(
          //                 "New Notification",
          //                 style:
          //                     TextStyle(fontSize: 20, color: Palette.textColor),
          //               )),
          //         ),
          //       ),
          //       Container(
          //         color: Palette.inputfieldbackgroundcolor,
          //         child: Padding(
          //           padding: const EdgeInsets.all(10),
          //           child: Row(
          //             children: [
          //               SizedBox(
          //                 width: 5,
          //               ),
          //               Text(
          //                 "Order no. 10558 assign to \nyou",
          //                 style: TextStyle(
          //                     fontWeight: FontWeight.bold,
          //                     color: Palette.textColor),
          //               ),
          //               SizedBox(
          //                 width: 70,
          //               ),
          //               Text("3 week ago",
          //                   style: TextStyle(
          //                       fontWeight: FontWeight.bold,
          //                       color: Palette.textColor))
          //             ],
          //           ),
          //         ),
          //       ),
              //   Expanded(
              //       child: Container(
              //     padding: EdgeInsets.all(15),
              //     child: ListView.separated(
              //       itemCount: notificationlist.length,
              //       itemBuilder: (context, index) {
              //         return NotificationWidget(
              //             notificationmodel: notificationlist[index]);
              //       },
              //       separatorBuilder: (BuildContext context, int index) {
              //         return SizedBox(
              //           height: 5,
              //         );
              //       },
              //     ),
              //   ))
              // ],
          //   ),
          // ))
        ],
      )),
    );
  }
}
