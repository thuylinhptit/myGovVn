import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/account/screen/change_pass.dart';
import 'package:ui_mygovvn/ui/account/screen/my_account.dart';



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
      home: MyAccount(),
    );
  }
}