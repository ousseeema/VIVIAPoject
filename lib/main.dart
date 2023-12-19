import 'package:eshop/dependancy/dependence.dart';
import 'package:eshop/view/homescreen/homeScreen.dart';
import 'package:eshop/view/loginscreen/signin.dart';
import 'package:eshop/view/loginscreen/signup.dart';
import 'package:eshop/view/onbording/onbording_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
   dependency.init();
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
     debugShowCheckedModeBanner: false,
     
      home: OnBordingScreenn(),
    );
  }
}