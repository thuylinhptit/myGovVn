import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/account/controller/quan_controller.dart';
import 'package:ui_mygovvn/ui/account/screen/my_account.dart';

class SearchQuan extends GetWidget{
  TextEditingController textEditingController = TextEditingController();
  QuanController searchController = Get.put(QuanController());
  static List<String> listQuan = [
    "Hà Nội",
    "Hải Phòng",
    "TP Hồ Chí Minh",
  ];
  List<String> newList = List.from(listQuan);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Tìm kiếm Quận/Huyện",
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
            child: GetBuilder<QuanController>(builder: (_){
              return TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: 'Tìm kiếm...',
                ),
                onChanged: _.onItemChangeQuan,
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
                    Get.back(result: data);
                  },);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

}