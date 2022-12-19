import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/editprofilescreen.dart';
import 'package:fluttertest2/ui/forgotpasswordscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obsecureText = true;
  bool validate = false;
  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.appbackgroundColor,
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
                      padding: EdgeInsets.only(top: 45),
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        "assets/logo_icon.png",
                        height: 70,
                        width: 70,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Palette.textColor),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 60, right: 30, left: 30),
                      padding: EdgeInsets.only(top: 0, right: 0, left: 0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: new InputDecoration(
                              contentPadding: const EdgeInsets.all(10),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Email Address',
                              hintStyle: TextStyle(fontSize: 16),
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
                                  borderRadius: BorderRadius.circular(10)),
                              disabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 3, color: Colors.white),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              //errorStyle: TextStyle(color: Palette.primaryColor),
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
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
                              FilteringTextInputFormatter.deny(RegExp(r"/"))
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
                    SizedBox(
                      height: 2,
                    ),
                    Column(
                      children: [
                        //           Stack(
                        //             children: [
                        //               Container(
                        //               padding: EdgeInsets.only(top: 15,left: 35,right: 35),

                        //               child: TextFormField(

                        //               obscureText: _obsecureText,
                        //               inputFormatters: [
                        //                 LengthLimitingTextInputFormatter(6)
                        //               ],
                        //               decoration: InputDecoration(

                        //                 contentPadding: const EdgeInsets.all(10),
                        //                 filled: true,
                        //                 fillColor: Palette.white,
                        //                 border: OutlineInputBorder(
                        //                       borderRadius: BorderRadius.circular(10)
                        //                      ),
                        //                      disabledBorder: OutlineInputBorder(
                        //                   borderSide: const BorderSide(width: 3, color: Colors.white),
                        //                   borderRadius: BorderRadius.circular(10),
                        //                 ),
                        //                 focusedBorder: OutlineInputBorder(
                        //                   borderSide: const BorderSide(width: 3, color: Colors.white),
                        //                   borderRadius: BorderRadius.circular(10),
                        //                 ),
                        //                 enabledBorder: OutlineInputBorder(
                        //                   borderSide: const BorderSide(width: 3, color: Colors.white),
                        //                   borderRadius: BorderRadius.circular(10),
                        //                 ),
                        //                 errorBorder: OutlineInputBorder(
                        //                   borderSide: const BorderSide(width: 3, color: Colors.white),
                        //                   borderRadius: BorderRadius.circular(10),
                        //                 ),
                        //                 focusedErrorBorder:  OutlineInputBorder(
                        //                   borderSide: const BorderSide(width: 3, color: Colors.white),
                        //                   borderRadius: BorderRadius.circular(10),
                        //                 ),
                        //                 //errorStyle: TextStyle(color: Palette.primaryColor),
                        //                 errorText: validate
                        //                     ? 'Please Enter Your Password'
                        //                     : null,
                        //                 hintText: 'Password',
                        //                 suffixIcon: GestureDetector(
                        //                   onTap: _toggleObscured,
                        //                   child: Transform.scale(
                        //                     scale: 0.5,
                        //                     child: ImageIcon(
                        //                       _obsecureText
                        //                           ? AssetImage(
                        //                               "assets/ic_eye_close.png",
                        //                             )
                        //                           : AssetImage(
                        //                               "assets/ic_eye_open.png",
                        //                             ),
                        //                       size: 15,

                        //                     ),
                        //                   ),
                        //                 ),

                        //               ),
                        //               autovalidateMode:
                        //                   AutovalidateMode.onUserInteraction,
                        //               validator: (val) {
                        //                 if (val!.isEmpty)
                        //                   return "Enter Your Password";
                        //                 return null;
                        //               }),
                        //             ),
                        //             Padding(
                        //   padding: const EdgeInsets.only(top: 30,left: 270),
                        //   child: GestureDetector(
                        //             onTap: _toggleObscured,
                        //             child: Transform.scale(
                        //               scale: 0.9,
                        //               child: ImageIcon(
                        //                 _obsecureText
                        //                     ? AssetImage(
                        //                         "assets/ic_eye_close.png",
                        //                       )
                        //                     : AssetImage(
                        //                         "assets/ic_eye_open.png",
                        //                       ),color: Palette.textColor,
                        //                 size: 25,

                        //               ),
                        //             ),
                        //           ),
                        // ),
                        //             ],

                        //           ),
                        Stack(
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.only(top: 20, left: 30, right: 30),
                              child: TextFormField(
                                  obscureText: _obsecureText,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(6)
                                  ],
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Palette.white,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    contentPadding: const EdgeInsets.all(10),
                                    suffixIcon: Transform.scale(
                                      scale: 0.5,
                                      child: ImageIcon(
                                        AssetImage(
                                          "assets/ic_lock.png",
                                        ),
                                        color: Palette.textColor,
                                        size: 12,
                                      ),
                                    ),

                                    disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.white),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    errorText: validate
                                        ? 'Please Enter Your Password'
                                        : null,
                                    //labelText: 'Enter Password',
                                    hintText: 'Password',
                                  ),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: (val) {
                                    if (val!.isEmpty) {
                                      return "Please Enter Your Password";
                                    } else if (val.length < 6) {
                                      return "Password should be atleast 6 characters";
                                    } else
                                      return null;
                                  }),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 32, left: 260),
                              child: GestureDetector(
                                onTap: _toggleObscured,
                                child: Transform.scale(
                                  scale: 0.9,
                                  child: ImageIcon(
                                    _obsecureText
                                        ? AssetImage(
                                            "assets/ic_eye_close.png",
                                          )
                                        : AssetImage(
                                            "assets/ic_eye_open.png",
                                          ),
                                    color: Palette.textColor,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 30, right: 30),
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
                                    msg: "Login Successful",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.SNACKBAR,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor: Colors.green,
                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditProfileScreen()),
                                );
                              } else {}
                            });
                          },
                          child: Text('Log In'),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordScreen()),
                          );
                        }),
                        child: Padding(
                          padding: EdgeInsets.only(top: 50),
                          child: Text(
                            'Forgot Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                    color: Palette.textColor,
                                    decoration: TextDecoration.underline),
                          ),
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
