import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/account/controller/city_controller.dart';
import 'package:ui_mygovvn/ui/account/screen/my_account.dart';

class SearchCity extends GetWidget{
  TextEditingController textEditingController = TextEditingController();
  CityController cityController = Get.put(CityController());
  static List<String> listCity = [
    "Hà Nội",
    "Hải Phòng",
    "TP Hồ Chí Minh",
  ];
  List<String> newList = List.from(listCity);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Tìm kiếm Tỉnh/Thành phố",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500),
          ),
          flexibleSpace: Image(
            image: AssetImage('image/appbar.png'),
            fit: BoxFit.cover,
          )),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: GetBuilder<CityController>(builder: (_){
              return TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm...',
                ),
                onChanged: _.onItemChangeCity,
              );
            })
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: (){
                    Get.offAll(MyAccount(), arguments: data);
                  },);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

}