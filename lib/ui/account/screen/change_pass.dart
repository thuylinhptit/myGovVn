import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_up/controller/controller_password.dart';

const color1 = const Color(0xFF8898AA);
const color2 = const Color(0xFF1E5AAA);
const color3 = const Color(0xFFC6C6C8);
const color4 = const Color(0xFF1E5AAA);
class ChangePass extends GetWidget{
  PassWordController passWordController = Get.put(PassWordController());
  TextEditingController _passController1 = TextEditingController();
  TextEditingController _passController2 = TextEditingController();
  TextEditingController _passController3 = TextEditingController();
  @override
  Widget build(BuildContext context
      ) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Thay đổi mật khẩu",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500),
          ),
          flexibleSpace: Image(
            image: AssetImage('image/appbar.png'),
            fit: BoxFit.cover,
          )),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            GetBuilder<PassWordController>(builder: (_) {
              print(_.check);
              return Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Stack(
                  children: [
                    Container(
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                        //  color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color1,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mật khẩu cũ", style: TextStyle( fontSize: 13, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),),
                          TextField(
                            onChanged: (text) {
                              passWordController.checkText(text);
                            },
                            controller: _passController1,
                            obscureText: _.check == true ? false : true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nhập mật khẩu cũ',
                              hintStyle: TextStyle(color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GetBuilder<PassWordController>(builder: (_){
                            return _.check == false
                                ? IconButton(
                                icon: Icon(
                                  Icons.visibility_off, color: color1,
                                ),
                                onPressed: () {
                                  _.displayIconEyes();
                                })
                                : IconButton(
                                icon: Icon(Icons.remove_red_eye), color: color1,
                                onPressed: () {
                                  _.displayIconEyes();
                                });

                          })
                        ],
                      ),
                    )
                  ],
                ),

              );
            }),

            GetBuilder<PassWordController>(builder: (_) {
              print(_.check2);
              return Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Stack(
                  children: [
                    Container(
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                        //  color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color1,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Mật khẩu mới", style: TextStyle( fontSize: 13, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),),
                          TextField(
                            onChanged: (text) {
                              passWordController.checkText(text);
                            },
                            controller: _passController2,
                            obscureText: _.check2 == true ? true : false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nhập mật khẩu mới',
                              hintStyle: TextStyle(color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GetBuilder<PassWordController>(builder: (_){
                            return _.check2 == false
                                ? IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye, color: color1,
                                ),
                                onPressed: () {
                                  _.nonDisplayIconEyes();
                                })
                                : IconButton(
                                icon: Icon(Icons.visibility_off), color: color1,
                                onPressed: () {
                                  _.nonDisplayIconEyes();
                                });

                          })
                        ],
                      ),
                    )
                  ],
                ),

              );
            }),

            GetBuilder<PassWordController>(builder: (_) {
              print(_.check3);
              return Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Stack(
                  children: [
                    Container(
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                        //  color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color1,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Nhập lại mật khẩu mới", style: TextStyle( fontSize: 13, color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),),
                          TextField(
                            onChanged: (text) {
                              passWordController.checkText(text);
                            },
                            controller: _passController3,
                            obscureText: _.check3 == true ? true : false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nhập lại mật khẩu mới',
                              hintStyle: TextStyle(color: color1, fontFamily: 'Quicksand', fontWeight: FontWeight.w500, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GetBuilder<PassWordController>(builder: (_){
                            return _passController3.text.length > 0 && _.check3 == false
                                ? IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye, color: color1,
                                ),
                                onPressed: () {
                                  _.nonDisplayIconEyes2();
                                })
                                : IconButton(
                                icon: Icon(Icons.visibility_off), color: color1,
                                onPressed: () {
                                  _.nonDisplayIconEyes2();
                                });

                          })
                        ],
                      ),
                    )
                  ],
                ),

              );
            }),
            Spacer(),
            Text("Quên mật khẩu?", style: TextStyle( fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w400, color: color2),),
            SizedBox(height: 20,),
            GetBuilder<PassWordController>(builder: (_){
              return _passController2.text == _passController3.text && _passController1.text.length > 0 && _passController2.text.length > 0? ButtonTheme(
                height: 50,
                child: FlatButton(
                  color: color4,
                  onPressed: () {
                    // print(_textEditingController.text);
                  },
                  child: Center(
                    child: Text(
                      "XÁC NHẬN",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
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
                  color: color3,
                  onPressed: () {
                    // print(_textEditingController.text);
                  },
                  child: Center(
                    child: Text(
                      "XÁC NHẬN",
                      style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                    ),
                  ),
                  shape: new RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white, width: 1),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                ),
              );
            }),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }

}