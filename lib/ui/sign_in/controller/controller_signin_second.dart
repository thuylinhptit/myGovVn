import 'package:get/get.dart';

class SignInSecondController extends GetxController{
  int count = 0;
  bool check = true;
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
}