import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CityController extends GetxController{
  List<String> newListCity;
  List<String> listCity;
  TextEditingController textEditingController = TextEditingController();
  onItemChangeCity ( String value ){
    newListCity = listCity.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    update();
  }
}