import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/bhxh/bhxh_item.dart';
import 'package:ui_mygovvn/ui/bhxh/controller_bhxh.dart';
import 'package:ui_mygovvn/ui/bhxh/detail_screen.dart';

class BaoHiemScreen extends StatelessWidget {
  TextEditingController hoVaTenController = TextEditingController() ;
  TextEditingController soCMND = TextEditingController() ;
  BhxhController bhxhController = Get.put(BhxhController());
  String _tinh = "" ;
  String _quan = "" ;
  String _huyen = "" ;
  String _thon = "" ;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Tra cứu mã số bảo hiểm xã hội'),
          flexibleSpace: Image(
            image: AssetImage('image/appbar.png'),
            fit: BoxFit.cover,
          ),
        ),
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 0.03 * width,
            top: 0.03 * width,
            right: 0.03 * width,
            bottom: 0.03 * width,
          ),
          child: ListTile(
            leading: Image.asset(
              "image/bhxh_image.png",
              width: width * 0.15,
            ),
            title: Text(
              "Bảo hiểm xã hội Việt Nam",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            subtitle: Text(
              "Đơn vị ban hành",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
        ),
        Divider(
          height: 2,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 0.06 * width,
            top: 0.03 * width,
            bottom: 0.03 * width,
            right: 0.06 * width,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Tỉnh/Thành phố",
                      style: TextStyle(color: Colors.grey, fontSize: 18),),
                    TextSpan(text: "*",
                      style: TextStyle(color: Colors.red, fontSize: 18),)
                  ]
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 0.05 * width,
                ),
                child: Container(
                  height: width * 0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 1),
                  ),
                  child: Center(
                      child: DropdownButtonFormField(
                        value: 'Chọn Tỉnh/Thành phố',
                        icon: RotatedBox(quarterTurns: 3,child: Icon(Icons.arrow_back_ios)),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        decoration: InputDecoration.collapsed(
                          hintText: '',
                        ),
                        items: <String>['Chọn Tỉnh/Thành phố', 'A', 'B', 'C', 'D']
                            .map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {
                          _tinh = _;
                        },
                      ),
                    ),
                ),
              ),
              Text(
                "Quận/Huyện",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 0.05 * width,
                ),
                child: Container(
                  height: width * 0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 1),
                  ),
                  child: Center(
                    child: DropdownButtonFormField(
                      value: 'Chọn Quận/Huyện',
                      icon: RotatedBox(quarterTurns: 3,child: Icon(Icons.arrow_back_ios)),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration.collapsed(
                        hintText: '',
                      ),
                      items: <String>['Chọn Quận/Huyện', 'A', 'B', 'C', 'D']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {
                        _quan = _;
                      },
                    ),
                  ),
                ),
              ),
              Text(
                "Xã/Phường",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 0.05 * width,
                ),
                child: Container(
                  height: width * 0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 1),
                  ),
                  child: Center(
                    child: DropdownButtonFormField(
                      value: 'Chọn Xã/Phường',
                      icon: RotatedBox(quarterTurns: 3,child: Icon(Icons.arrow_back_ios)),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration.collapsed(
                        hintText: '',
                      ),
                      items: <String>['Chọn Xã/Phường', 'A', 'B', 'C', 'D']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {
                        _huyen = _;
                      },
                    ),
                  ),
                ),
              ),
              Text(
                "Thôn/Xóm",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 0.05 * width,
                ),
                child: Container(
                  height: width * 0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid, width: 1),
                  ),
                  child: Center(
                    child: DropdownButtonFormField(
                      value: 'Chọn Thôn/Xóm',
                      icon: RotatedBox(quarterTurns: 3,child: Icon(Icons.arrow_back_ios)),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration.collapsed(
                        hintText: '',
                      ),
                      items: <String>['Chọn Thôn/Xóm', 'A', 'B', 'C', 'D']
                          .map((String value) {
                        return new DropdownMenuItem<String>(
                          value: value,
                          child: new Text(value),
                        );
                      }).toList(),
                      onChanged: (_) {
                        _thon = _;
                      },
                    ),
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                    children: [
                      TextSpan(text: "Họ và tên ",
                        style: TextStyle(color: Colors.grey, fontSize: 18),),
                      TextSpan(text: "*",
                        style: TextStyle(color: Colors.red, fontSize: 18),)
                    ]
                ),
              ),
              GetBuilder<BhxhController>(builder: (_){
                return Container(
                  height: width * 0.15,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1)),
                  child: TextField(
                    controller: hoVaTenController,
                    onChanged: (_){
                      bhxhController.checkText(_);
                    },
                    decoration: InputDecoration(
                        hintText: 'Nhập họ và tên',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                        border: InputBorder.none),
                  ),
                );
              }),
              SizedBox(
                height: 0.05 * width,
              ),
              Text(
                "Số CMND/CCCD",
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Container(
                height: width * 0.15,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1)),
                child: TextField(
                  controller: soCMND,
                  onChanged: (_){
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Nhập số CMND/CCCD',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 0.05*width,
              ),
              GetBuilder<BhxhController>(builder: (_){
                return (_.count == 1  && _tinh.toString() != 'Chọn Tỉnh/Thành phố')? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      height: width*0.14,
                      minWidth: width*0.4,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          side: BorderSide( color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.white,
                        onPressed: null,
                        child: Text(
                          "NHẬP LẠI",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.05*width,
                    ),
                    ButtonTheme(
                      buttonColor: Colors.blue,
                      height: width*0.14,
                      minWidth: width*0.4,
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          //  side: BorderSide( color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.blue,
                        onPressed: (){
                          Get.to(Detailscreen(), );
                        },
                        child: Text(
                          "TRA CỨU",
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),

                  ],
                ) :  Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ButtonTheme(
                      height: width*0.14,
                      minWidth: width*0.4,
                      child: RaisedButton(
                        //    height: 0.15 * width,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.black,
                        onPressed: null,
                        child: Text(
                          "NHẬP LẠI",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.05*width,
                    ),
                    ButtonTheme(
                      height: width*0.14,
                      minWidth: width*0.4,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.grey,
                        onPressed: null,
                        child: Text(
                          "TRA CỨU",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                );
              }),
              SizedBox(
                height: 0.15*width,
              )
            ],
          ),
        )
      ],
    ));
  }
}
