import 'package:get/get.dart';

class OtpController extends GetxController{
  int count = 0;
  void checkText( String text ){
    if( text.isNum){
      count = 1;
    }
    else{
      count = 0;
    }
    update();
  }
}