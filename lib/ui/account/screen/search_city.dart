import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCity extends StatefulWidget{

  @override
  _SearchCity createState() => _SearchCity();

}
class _SearchCity extends State<SearchCity>{
  TextEditingController textEditingController = TextEditingController();
  static List<String> listCity = [
    "Hà Nội",
    "Hải Phòng",
    "TP Hồ Chí Minh",
  ];
  List<String> newList = List.from(listCity);
  onItemChange ( String value){
    setState(() {
      newList = listCity.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
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
            child: TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                hintText: 'Tìm kiếm...',
              ),
              onChanged: onItemChange,
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(12.0),
              children: newList.map((data) {
                return ListTile(
                  title: Text(data),
                  onTap: ()=> print(data),);
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

}