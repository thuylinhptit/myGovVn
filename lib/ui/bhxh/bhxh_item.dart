import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

const color1 = const Color(0xFF262933);
const color2 = const Color(0xFF8898AA);
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
                // width: width * 0.08,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
                child: Text(
                  number.toString(),
                  style: TextStyle(fontSize: 16, color: Colors.white,fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          subtitle: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mã số BHXH: ",
                        style: TextStyle(
                            fontSize: 16,
                            color: color1,fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Họ và tên:",
                        style: TextStyle(fontSize: 16,color: color2, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Giới tính:",
                        style: TextStyle(fontSize: 16,color: color2,fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Ngày sinh:",
                        style: TextStyle(fontSize: 16,color: color2,fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Mã hộ:",
                        style: TextStyle(fontSize: 16,color: color2,fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Địa chỉ:",
                        style: TextStyle(fontSize: 16,color: color2, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Trạng thái:",
                        style: TextStyle(fontSize: 16,color: color2, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
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
                            color: color1,
                            fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                      ),
                      Text(
                        hoTen,
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        gioiTinh,
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        DateFormat('dd/MM/yyyy').format(ngaySinh),
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        hoKhau,
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        diaChi,
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                      Text(
                        trangThai,
                        style: TextStyle(fontSize: 16, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
            ],
          )),
    );
  }
}
