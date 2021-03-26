import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_up/controller/controller_password.dart';

class PassWordScreen extends GetWidget {
  TextEditingController _passController1 = TextEditingController();
  TextEditingController _passController2 = TextEditingController();
  PassWordController passWordController = Get.put(PassWordController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/background.png"), fit: BoxFit.cover)),
        padding: EdgeInsets.only(left: 0.06*width, top: 0.2*height, right: 0.06*width),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Mật khẩu tài khoản",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ],
            ),
            GetBuilder<PassWordController>(builder: (_) {
              print(_.check);
              return Padding(
                padding: EdgeInsets.only( top: 0.02*height, bottom: 0.01*height),
                child: TextField(
                  onChanged: (text) {
                    passWordController.checkText(text);
                    //  passWordController.displayIconEyes();
                  },
                  controller: _passController1,
                  obscureText: _.check == true ? false : true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    hintText: 'Tạo mật khẩu',
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: _passController1.text.length > 0
                        ? (_.check == true
                            ? IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye_sharp,
                                ),
                                onPressed: () {
                                  _.displayIconEyes();
                                })
                            : IconButton(
                                icon: Icon(Icons.visibility_off),
                                onPressed: () {
                                  _.displayIconEyes();
                                }))
                        : null,
                  ),
                ),
              );
            }),
            GetBuilder<PassWordController>(builder: (_) {
              print(_.check2);
              return TextField(
                onChanged: (text) {
                  passWordController.checkText(text);
                  //  passWordController.displayIconEyes();
                },
                controller: _passController2,
                obscureText: _.check2 == true ? true : false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  hintText: 'Nhắc lại mật khẩu',
                  hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: _passController2.text.length > 0
                      ? (_.check == true
                          ? IconButton(
                              icon: Icon(
                                Icons.visibility_off,
                              ),
                              onPressed: () {
                                _.nonDisplayIconEyes();
                              })
                          : IconButton(
                              icon: Icon(Icons.remove_red_eye_sharp),
                              onPressed: () {
                                _.nonDisplayIconEyes();
                              }))
                      : null,
                ),
              );
            }),
            Spacer(),
            GetBuilder<PassWordController>(builder: (_){
              return _passController1.text == _passController2.text && _passController1.text.length > 0 ? ButtonTheme(
                  height: 50,
                  child: FlatButton(
                    color: Colors.blue[200],
                    onPressed: () {
                      // print(_textEditingController.text);
                    },
                    child: Center(
                      child: Text(
                        "ĐĂNG KÝ",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 1),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),

              ) :ButtonTheme(
                  height: 50,
                  child: FlatButton(
                    color: Colors.white,
                    onPressed: () {
                      // print(_textEditingController.text);
                    },
                    child: Center(
                      child: Text(
                        "ĐĂNG KÝ",
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                      ),
                    ),
                    shape: new RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 1),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                  ),
              );
            }),
            SizedBox( height: height*0.1,)
          ],
        ),
      ),
    );
  }
}
