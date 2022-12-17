import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest2/palette.dart';
import 'package:fluttertest2/ui/editprofilescreen.dart';
import 'package:fluttertest2/ui/loginscreen.dart';
import 'package:fluttertest2/ui/myprofilescreen.dart';
import 'package:fluttertest2/ui/newordersscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: Palette.appbackgroundColor,
     ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
 @override  
  void initState() {
    super.initState();  
    Timer(Duration(seconds: 3),  
            ()=>Navigator.pushReplacement(context,  
            MaterialPageRoute(builder:  
                (context) => LoginScreen()  
            )  
         )  
    );  
  }  
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
     padding: EdgeInsets.only(top: 10),
     //height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(
        "assets/ic_background.png"
        ),
           fit: BoxFit.fill,
          
           //colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken)
           ),
      ),
      child: Scaffold(
      backgroundColor: Colors.transparent,
        //backgroundColor: Color.fromARGB(0, 241, 238, 238),  
        body: SafeArea(child: Column(
          
          children: [
            Stack(
              children: [
                
                   Padding(
                      padding: const EdgeInsets.only(top: 350),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset("assets/ic_delivery_amico.png",height: 320,width: 320,),
                      ),
                    ),   
                   
                    
                     Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/ic_logo_text.png",height: 200,width: 200,),
                      ),
                    ),
              ],
            )
          ],
        )),
  
      ),
    );  
  }  
} 
