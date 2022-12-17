import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/loginscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({ Key? key }) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
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
            Expanded(
              child: Column(
              children: [
                Container(
                                padding: EdgeInsets.only(top: 70),
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/logo_icon.png",
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              SizedBox(height: 20,),
                              Padding(
                        padding: const EdgeInsets.only(top: 0,),
                        child: Container(
                child: Text(
                "Forgot Password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Palette.notifitext2color),
                ),
                        ),
                      ),
                    SizedBox(height: 50,),
                    Expanded(child: Form(
                       key: _formKey,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                                  margin: EdgeInsets.only( right: 30, left: 30),
                                        
                                      padding:
                                          EdgeInsets.only(top: 0, right: 0, left: 0),
                                      child: Column(
                                        children: [
                                          TextFormField(
                                            decoration: new InputDecoration(
                                               
                                              contentPadding: const EdgeInsets.all(10),
                                              filled: true,
                                              fillColor:Colors.white,
                                              hintText: 'Email Address',hintStyle: TextStyle(fontSize: 16),
                                             suffixIcon: Transform.scale(
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
                                          //errorStyle: TextStyle(color: Palette.primaryColor),
                                            ),
                                            //controller: emailCtr,
                                            inputFormatters: [
                                              LengthLimitingTextInputFormatter(320),
                                              FilteringTextInputFormatter.deny(" "),
                                              FilteringTextInputFormatter.deny("[]"),
                                              FilteringTextInputFormatter.deny("["),
                                              FilteringTextInputFormatter.deny("]"),
                                              FilteringTextInputFormatter.deny("^"),
                                              FilteringTextInputFormatter.deny(""),
                                              FilteringTextInputFormatter.deny("`"),
                                              FilteringTextInputFormatter.deny("/"),
                                              FilteringTextInputFormatter.deny("\\"),
                                              FilteringTextInputFormatter.allow(
                                                  RegExp(r'[0-9a-zA-z._@]')),
                                              FilteringTextInputFormatter.deny(
                                                  RegExp(r"/"))
                                            ],
                                           validator: (value) {
                                        if (value?.trim().isEmpty ?? true) {
                                          return "Please Enter Email Address";
                                        } else if (!RegExp(
                                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                            .hasMatch(value ?? "")) {
                                          return "Enter Valid Email Address";
                                        }
                                        return null;
                                        },
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 40,),
                                     Padding(
                              padding: EdgeInsets.only(),
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
                                            msg: "Record Submited",
                                            toastLength: Toast.LENGTH_SHORT,
                                            gravity: ToastGravity.SNACKBAR,
                                            timeInSecForIosWeb: 1,
                                            backgroundColor:
                                                Color.fromARGB(255, 58, 54, 54),
                                            textColor: Colors.white,
                                            fontSize: 16.0);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginScreen()),
                                            );
                                      } else {
                                        
                                      }
                                    });
                                  },
                                  child: Text('Log In'),
                                ),
                              ),
                            ),
                            Container(
                          padding: EdgeInsets.all(15),
                         
                          child: Row(
                            children: [
                              Stack(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (() {}),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 75, top: 250),
                                        //alignment: Alignment.topRight,
                                        child: Text(
                                            'Remember Password?',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    //fontFamily: KSMFontFamily.robotoRgular,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0))),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: (() {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()),
                                        );
                                      }),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 220, top: 250),
                                        //alignment: Alignment.topRight,
                                        child: Text('Login',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    //fontFamily: KSMFontFamily.robotoRgular,
                                                    color:Palette.cursorcolor)),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                          ],
                        ),
                      ),
                    ))
              ],
            )
            )
            
          ],
              )),
      ),
    );
  }
}