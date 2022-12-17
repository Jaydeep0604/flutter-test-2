import 'package:flutter/material.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/editprofilescreen.dart';
import 'package:fluttertest2/ui/newordersscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
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
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    "My Profile",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(top: 30, left: 20),
                    child: CircleAvatar(
                      radius: 45,
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
                          padding: const EdgeInsets.only(top: 40, left: 20),
                          child: Container(
                            child: Text(
                              "Jaydeep Koladiya",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 0),
                          child: Container(
                            child: Text(
                              "jaydeep@gmail.com",
                              style: TextStyle(color: Palette.textColor),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 20),
                          child: SizedBox(
                            width: 130,
                            height: 25,
                            child: MaterialButton(
                              color: Palette.cursorcolor,
                              textColor: Palette.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () {
                                setState(() {
                                  Fluttertoast.showToast(
                                      msg: "Profile Updated successfully",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.SNACKBAR,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                          Colors.green,
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditProfileScreen()),
                                  );
                                });
                              },
                              child: Text('Edit Profile'),
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
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 130),
            child: Container(
              child: Text(
                "Account Information",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Container(
              child: Row(
                children: [
                  ImageIcon(AssetImage("assets/ic_call.png")),
                  SizedBox(width: 10,),
                  Text("+91 8787879797")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Container(
              child: Row(
                children: [
                  ImageIcon(AssetImage("assets/ic_email.png")),
                  SizedBox(width: 10,),
                  Text("jaydeep@gmail.com")
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
