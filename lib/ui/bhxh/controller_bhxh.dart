import 'package:get/get.dart';

class BhxhController extends GetxController{
  int count = 0;
  void checkText( String text ){
    if( !text.isEmpty && ! text.isNum  ){
      count = 1;
    }
    else if( text.isEmpty ){
      count = 2;
    }
    else{
      count = 0;
    }
    update();
  }

}