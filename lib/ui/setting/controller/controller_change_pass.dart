import 'package:get/get.dart';

class ChangePassController extends GetxController{
  bool check1 = true;
  bool check2 = false;
  bool check3 = false;
  int count = 0;
  String str;
  String updateText( String text ){
    str = text;
    update();
    return str;
  }
  void checkText( String text ){
    if( text.length > 0 ) count = 1;
    else count = 0;
    update();
  }
  void displayIconEyes1(){
    if( check1 == true ) check1 = false;
    else if( check1 == false ) check1 = true;
    update();
  }
  void displayIconEyes2(){
    if( check2 == true ) check2 = false;
    else if( check2 == false ) check2 = true;
    update();
  }
  void displayIconEyes3(){
    if( check3 == true ) check3 = false;
    else if( check3 == false ) check3 = true;
    update();
  }
}