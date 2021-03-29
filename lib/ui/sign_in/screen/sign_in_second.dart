import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_in/controller/controller_signin_second.dart';

class SignInSecond extends GetWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextEditingController textEditingController = TextEditingController();
    SignInSecondController signInSecondController =
        Get.put(SignInSecondController());
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("image/background.png"), fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.only(left: 0.06*width, right: 0.06*width, top: 0.15*width),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0.04*width, right: 0.04*width, bottom: 0.04*width),
                  child: CircleAvatar(
                    radius: width * 0.1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Text(
                    "Xin chào,",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                GetBuilder<SignInSecondController>(builder: (_) {
                  print(_.check);
                  return TextField(
                          onChanged: (text) {
                            signInSecondController.checkText(text);
                          },
                          controller: textEditingController,
                          obscureText: _.check == true ? false : true,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            hintText: 'Nhập mật khẩu',
                            hintStyle: TextStyle(color: Colors.grey, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                            suffixIcon: textEditingController.text.length > 0
                                ? (_.check == true
                                    ? IconButton(
                                        icon: Icon(
                                          Icons.visibility_off,
                                        ),
                                        onPressed: () {
                                          _.displayIconEyes();
                                        })
                                    : IconButton(
                                        icon: Icon(Icons.remove_red_eye_sharp),
                                        onPressed: () {
                                          _.displayIconEyes();
                                        }))
                                : null,
                          ),
                    );
                }),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Đổi lại số điện thoại",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Quên mật khẩu",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                 GetBuilder<SignInSecondController>(builder: (_){
                    return textEditingController.text.length > 0 ? ButtonTheme(
                      height: 50,
                      child: FlatButton(
                        color: Colors.blue[200],
                        onPressed: () {
                      //    print(_textEditingController.text);
                        },
                        child: Center(
                          child: Text(
                            "ĐĂNG NHẬP",
                            style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    ): ButtonTheme(
                      height: 50,
                      child: FlatButton(
                        color: Colors.white,
                        onPressed: () {
                        //  print(_textEditingController.text);
                        },
                        child: Center(
                          child: Text(
                            "TIẾP TỤC",
                            style: TextStyle(color: Colors.grey, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w700),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    );
                  }),
                SizedBox(
                  height: height*0.15,
                )
              ],
            ),
          ),
        ),
    );
  }
}
