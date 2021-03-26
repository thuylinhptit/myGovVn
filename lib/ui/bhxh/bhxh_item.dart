import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class BhxhItem extends StatelessWidget {
  final int number;
  final DateTime ngaySinh;
  final String hoTen, gioiTinh, hoKhau, diaChi, trangThai, maSo;

  BhxhItem(
      {this.number,
      this.ngaySinh,
      this.hoTen,
      this.gioiTinh,
      this.hoKhau,
      this.diaChi,
      this.trangThai,
      this.maSo});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.02),
      child: ListTile(
          leading: Stack(
            children: [
              Image.asset(
                'image/ellipse.png',
                height: width * 0.08,
                width: width * 0.08,
              ),
              Text(
                number.toString(),
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mã số BHXH: ",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Họ và tên:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Giới tính:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Ngày sinh:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Mã hộ:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Địa chỉ:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Trạng thái:",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
              SizedBox(width: width * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    maSo,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    hoTen,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    gioiTinh,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    DateFormat('dd/mm/yy').format(ngaySinh),
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    hoKhau,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    diaChi,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    trangThai,
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
