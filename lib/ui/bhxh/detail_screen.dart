import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/bhxh/bhxh_item.dart';
import 'package:ui_mygovvn/ui/model/bhxh.dart';

class Detailscreen extends GetWidget {
  var hoVaTen = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final List<Bhxh> listDetail = [
      Bhxh(1, DateTime.now(), "Nguyễn Thanh Tùng", "Nam", "0010200000",
          "diaChi", "trangThai", "0123456"),
      Bhxh(2, DateTime.now(), "Nguyễn Thanh Tùng", "Nam", "0010200000",
          "diaChi", "trangThai", "0123456"),
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text('Tra cứu mã số bảo hiểm xã hội', style: TextStyle(fontFamily: 'Quicksand',
              fontWeight: FontWeight.w400),),
          flexibleSpace: Image(
            image: AssetImage('image/appbar.png'),
            fit: BoxFit.cover,
          ),
        ),
        body: Column(
          children: listDetail
              .map((e) => BhxhItem(
                  number: e.number,
                  ngaySinh: e.ngaySinh,
                  hoTen: e.hoTen,
                  gioiTinh: e.gioiTinh,
                  hoKhau: e.hoKhau,
                  diaChi: e.diaChi,
                  trangThai: e.trangThai,
                  maSo: e.maSo))
              .toList(),
        ));
  }
}
