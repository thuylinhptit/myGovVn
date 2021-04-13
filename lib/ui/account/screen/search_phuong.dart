import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPhuong extends StatefulWidget{

  @override
  _SearchPhuong createState() => _SearchPhuong();

}
class _SearchPhuong extends State<SearchPhuong>{
  TextEditingController textEditingController = TextEditingController();
  static List<String> listPhuong = [
    "Hà Nội",
    "Hải Phòng",
    "TP Hồ Chí Minh",
  ];
  List<String> newList = List.from(listPhuong);
  onItemChange ( String value){
    setState(() {
      newList = listPhuong.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Tìm kiếm Phường/Xã",
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