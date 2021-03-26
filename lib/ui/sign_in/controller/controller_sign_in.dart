import 'package:get/get.dart';

class SignInController extends GetxController{
  int count = 0;
  String str;
  void checkText( String text ){
    if( text.isNum ){
      count = 1;
    }
    else if ( text.isEmpty ){
      count = 0;
    }
    else {
      count = 2;
    }
    update();
  }

  void changeCount (){
    count = 0;
    update;
  }

  String updateText( String text ){
    str = text;
    update();
    return str;
  }
}