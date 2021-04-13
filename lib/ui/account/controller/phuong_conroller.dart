import 'package:get/get.dart';

class PhuongController extends GetxController{
  List<String> newListPhuong;
  List<String> listPhuong;

  onItemChangePhuong ( String value ){
    newListPhuong = listPhuong.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    update();
  }
}