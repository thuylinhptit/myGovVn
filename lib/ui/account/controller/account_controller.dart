import 'package:get/get.dart';

class AccountController extends GetxController{
  int count = 0;
  int check = 0;
  void checkEmail( String text ){
    if( text.contains("@gmail.com")) {
      count = 1;
    }
    else {
      count = 0;
    }
    update();
  }

  void checkDC( String text ){
    if( text.length > 0 ) {
      check = 1;
    }
    else {
      check = 0;
    }
    update();
  }

}