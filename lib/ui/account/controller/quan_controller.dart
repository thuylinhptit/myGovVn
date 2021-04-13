import 'package:get/get.dart';

class QuanController extends GetxController{
  List<String> newListQuan;
  List<String> listQuan;

  onItemChangeQuan ( String value ){
    newListQuan = listQuan.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    update();
  }

}