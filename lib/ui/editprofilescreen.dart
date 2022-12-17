import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/myprofilescreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController textareaname = TextEditingController();
  TextEditingController textareaemail = TextEditingController();
  TextEditingController textareaphone = TextEditingController();
  TextEditingController textarearefcode = TextEditingController();
  @override
  void initState() {
    textareaname.text = "Jaydeep Koladiya"; //default text
    textareaemail.text = "jaydeep@gmail.com";
    textareaphone.text = "8787879797";
    textarearefcode.text = "GJ011685";
    super.initState();
  }

  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.editprofilebackgroundColor,
      body: SafeArea(
          child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Column(
          children: [
            Expanded(
                child: Form(
              key: _formKey,
              child: SingleChildScrollView(
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
                                            MyProfileScreen()),
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
                              "Edit Profile",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 55),
                                  child: CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      backgroundColor: Palette.white,
                                      backgroundImage:
                                          AssetImage('assets/ic_user.png'),
                                      radius: 70,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 50, top: 110),
                                  child: IconButton(
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                          msg: "Upload Phote",
                                          toastLength: Toast.LENGTH_SHORT,
                                          gravity: ToastGravity.BOTTOM,
                                          timeInSecForIosWeb: 1,
                                          backgroundColor: Palette.cursorcolor,
                                          textColor: Colors.white,
                                          fontSize: 16.0);
                                    },
                                    icon: Image.asset(
                                        'assets/ic_edit_profile.png'),
                                    iconSize: 10,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 50, right: 20, left: 20),
                      child: Column(
                        children: [
                          TextFormField(
                            autofocus: false,
                            initialValue: textareaname.text,
                            cursorColor: Palette.cursorcolor,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Palette.appbackgroundColor,
                              contentPadding: const EdgeInsets.all(10),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  'assets/ic_user.png',
                                  width: 0,
                                  height: 0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),

                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            //validator: (fristname) {
                            //   if (fristname == null || fristname.isEmpty) {
                            //     return 'Please enter first name';
                            //   }
                            //   return null;
                            // },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                      padding: EdgeInsets.only(top: 0, right: 0, left: 0),
                      child: Column(
                        children: [
                          TextFormField(
                             autofocus: false,
                            initialValue: textareaemail.text,
                            decoration: new InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              filled: true,
                              fillColor: Palette.appbackgroundColor,
                             // prefixText: 'jaydeep@gmail.com',
                              //hintStyle: TextStyle(fontSize: 16),
                              prefixIcon: Transform.scale(
                                scale: 0.5,
                                child: ImageIcon(
                                  AssetImage(
                                    "assets/ic_email.png",
                                  ),
                                  //color: Palette.blackColor,
                                  size: 12,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              //errorStyle: TextStyle(color: Palette.primaryColor),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            //controller: emailCtr,
                            // inputFormatters: [
                            //   LengthLimitingTextInputFormatter(320),
                            //   FilteringTextInputFormatter.deny(" "),
                            //   FilteringTextInputFormatter.deny("[]"),
                            //   FilteringTextInputFormatter.deny("["),
                            //   FilteringTextInputFormatter.deny("]"),
                            //   FilteringTextInputFormatter.deny("^"),
                            //   FilteringTextInputFormatter.deny(""),
                            //   FilteringTextInputFormatter.deny("`"),
                            //   FilteringTextInputFormatter.deny("/"),
                            //   FilteringTextInputFormatter.deny("\\"),
                            //   FilteringTextInputFormatter.allow(
                            //       RegExp(r'[0-9a-zA-z._@]')),
                            //   FilteringTextInputFormatter.deny(
                            //       RegExp(r"/"))
                            // ],
                            //    validator: (value) {
                            // if (value?.trim().isEmpty ?? true) {
                            //   return "Please Enter Email Address";
                            // } else if (!RegExp(
                            //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            //     .hasMatch(value ?? "")) {
                            //   return "Enter Valid Email Address";
                            // }
                            // return null;
                            // },
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: IntlPhoneField(
                         autofocus: false,
                            initialValue: textareaphone.text,
                        cursorColor: Palette.cursorcolor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Palette.appbackgroundColor,
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          disabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Palette.appbackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Palette.appbackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Palette.appbackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Palette.appbackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 3, color: Palette.appbackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/images/ic_call.png',
                              width: 0,
                              height: 0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          // icon: const Icon(Icons.phone),
                          //prefixText: '8787879797',
                        ),
                        // validator: (phonenum) {
                        //       if (phonenum == null) {
                        //         return 'Please enter Contact Number';
                        //       }
                        //       return null;
                        //     },
                        disableLengthCheck: true,
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        showCountryFlag: false,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Column(
                        children: [
                          TextFormField(
                             autofocus: false,
                            initialValue: textarearefcode.text,
                            cursorColor: Palette.cursorcolor,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(8)
                            ],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Palette.appbackgroundColor,
                              contentPadding: const EdgeInsets.all(10),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Palette.appbackgroundColor),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              //prefixText: 'GJ011685',
                            ),
                            // controller: emailCtr,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: SizedBox(
                        width: 320,
                        height: 45,
                        child: MaterialButton(
                          color: Palette.cursorcolor,
                          textColor: Palette.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState!.validate()) {
                                Fluttertoast.showToast(
                                    msg: "Profile Saved",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.SNACKBAR,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Palette.cursorcolor,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyProfileScreen()),
                                );
                              } else {}
                            });
                          },
                          child: Text('Save Profile'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      )),
    );
  }
}
