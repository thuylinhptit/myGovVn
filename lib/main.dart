import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_in/screen/sign_in_screen.dart';
import 'package:ui_mygovvn/ui/sign_in/screen/sign_in_second.dart';

void main (){
  runApp(
    MyApp(),
  );
}

class MyApp  extends StatelessWidget{
  @override
  Widget build(BuildContext context
      ) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }

}