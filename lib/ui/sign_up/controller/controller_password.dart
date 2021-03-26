import 'package:get/get.dart';

class PassWordController extends GetxController{
  int count = 0;
  bool check = true;
  bool check2 = true;
  void checkText( String text ){
    if( text.length > 0 ) count = 1;
    else count = 0;
    update();
  }

  void displayIconEyes(){
    if( check == true ) check = false;
    else if( check == false ) check = true;
    update();
  }
  void nonDisplayIconEyes(){
    if( check2 == true ) check2 = false;
    else if( check2 == false ) check2 = true;
    update();
  }
}