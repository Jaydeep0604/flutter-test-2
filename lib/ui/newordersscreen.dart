import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fluttertest2/models/itemsmodel.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/loginscreen.dart';
import 'package:fluttertest2/ui/myprofilescreen.dart';
import 'package:fluttertest2/ui/notificationscreen.dart';
import 'package:fluttertest2/ui/orderhistoryscreen.dart';
import 'package:fluttertest2/widgets/neworderwidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NewOrdersScreen extends StatefulWidget {
  const NewOrdersScreen({Key? key}) : super(key: key);

  @override
  State<NewOrdersScreen> createState() => _NewOrdersScreenState();
}

class _NewOrdersScreenState extends State<NewOrdersScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  List<ItemsModel> neworderlist = [
    ItemsModel(
        "1",
        "9654",
        "Jaydeep",
        "Customer Address-Nirmal Complex,Nr.Parimal Garden,opp.Doctor House,Tulsibag Society,\nElisbridge,Ahmedabad,Gujarat 380006,India Ahmedabad Gujarat India 380006",
        "Prepaid",
        "nCount",
        "nweek",
        "hOrderCount",
        "hCustName",
        "hOrderDate",
        "hOrderTime",
        "hOrderstatus"),
    ItemsModel(
        "2",
        "9655",
        "Jay",
        "Customer Address-Nirmal Complex,Nr.Parimal Garden,opp.Doctor House,Tulsibag Society,\nElisbridge,Ahmedabad,Gujarat 380006,India Ahmedabad Gujarat India 380006",
        "Prepaid",
        "nCount",
        "nweek",
        "hOrderCount",
        "hCustName",
        "hOrderDate",
        "hOrderTime",
        "hOrderstatus"),
  ];
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = FlatButton(
      child: Text(
        "CANCEL",
        style: TextStyle(color: Palette.cursorcolor),
      ),
      onPressed: () {
        Navigator.pop(context, false);
      },
    );
    Widget continueButton = FlatButton(
      child: Text("CONFIRM", style: TextStyle(color: Palette.cursorcolor)),
      onPressed: () {
        Fluttertoast.showToast(
            msg: "Logout successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.green,
            textColor: Palette.white,
            fontSize: 16.0);
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const LoginScreen()),
        );
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      //title: Text("AlertDialog"),
      content: Text("Are you sure you want to Logout!"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.editprofilebackgroundColor,
      drawer: Drawer(
        backgroundColor: Palette.editprofilebackgroundColor,
        child: ListView(
          children: [
            Container(
              height: 110,
              child: DrawerHeader(
                child: Row(
                  children: [
                    Container(
                        alignment: Alignment.bottomCenter,
                        padding: EdgeInsets.only(top: 0, left: 10),
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage(
                            'assets/ic_user.png',
                          ),
                          backgroundColor: Palette.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, right: 22),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Jaydeep Koladiya",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10, right: 40),
                              child: Container(
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "jaydeep@gmail.com",
                                    style: TextStyle(color: Palette.textColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyProfileScreen()),
                );
              },
              leading: Image.asset(
                'assets/ic_user.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'My Profile',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_list.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                "Active Order",
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderHistoryScreen()),
                );
              },
              leading: Image.asset(
                'assets/ic_pending_watch.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'Order History',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_dollor.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'My Earnings',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationScreen()),
                );
              },
              leading: Image.asset(
                'assets/ic_notification.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'Notification',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_multi_user.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'About Us',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_list.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'terms and Condition',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_help.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'Help & support',
                style: TextStyle(fontSize: 17),
              ),
            ),
            ListTile(
              onTap: () {
                Fluttertoast.showToast(
                    msg: "Not Developed",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Color.fromARGB(255, 219, 0, 0),
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
              leading: Image.asset(
                'assets/ic_settings.png',
                height: 30,
                width: 30,
              ),
              title: Text(
                'Change Password',
                style: TextStyle(fontSize: 17),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Container(
                //padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                width: 10,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Palette.cursorcolor,
                    borderRadius: BorderRadius.circular(10)),
                child: MaterialButton(
                    child: Text(
                      'Log Out',
                      style: TextStyle(color: Palette.white),
                    ),
                    onPressed: () {
                      showAlertDialog(context);
                    }),
              ),
            )
          ],
        ),
      ),
      key: _scaffoldkey,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: Palette.appbackgroundColor,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          IconButton(
                            padding: EdgeInsets.only(top: 15),
                            onPressed: () =>
                                _scaffoldkey.currentState?.openDrawer(),
                            icon: Image.asset('assets/ic_dwr_menu.png'),
                            iconSize: 30,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 20, left: 60),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'New Orders',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 0, left: 300),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationScreen()),
                            );
                          },
                          icon: Image.asset(
                            'assets/ic_notification.png',
                          ),
                          iconSize: 30,
                        )),
                  ],
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            child: ListView.separated(
              itemCount: neworderlist.length,
              itemBuilder: (context, index) {
                return NewOrderWidget(newordermodel: neworderlist[index]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 5,
                );
              },
            ),
          ))
        ],
      )),
    );
  }
}
