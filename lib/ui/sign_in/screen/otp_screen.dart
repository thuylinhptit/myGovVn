import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_in/controller/controller_otp.dart';

class ScreenOTP extends GetWidget {
  TextEditingController _textEditingController = TextEditingController();
  OtpController otpController = Get.put(OtpController());
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("image/background.png"), fit: BoxFit.cover)),
        padding: EdgeInsets.fromLTRB(25, 190, 25, 0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Mã xác thực OTP",
                  style: TextStyle(fontSize: 28, color: Colors.white),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 25, 16),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Nhập mã xác nhận OTP vừa được gửi đến số ",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  TextSpan(
                    text: Get.arguments,
                    style: TextStyle(fontSize: 16, color: Colors.yellowAccent),
                  )
                ]),
              ),
            ),
            GetBuilder<OtpController>(builder: (_) {
              return _.count == 0
                  ?
                  Column(
                    children: [
                      TextField(
                        onChanged: (text) {
                          otpController.checkText(text);
                        },
                        keyboardType: TextInputType.number,
                        controller: _textEditingController,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          hintText: '000 000',
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: _textEditingController.text.length > 0
                              ? IconButton(
                              icon: Icon(
                                Icons.cancel,
                              ),
                              onPressed: () =>
                                  _textEditingController.clear())
                              : null,
                        ),
                      ),
                      Center(
                        child: Text("Gửi lại OTP (0:13)", style: TextStyle( fontSize: 16, color: Colors.white),),
                      )
                    ],
                  )
                  : TextField(
                      onChanged: (text) {
                        otpController.checkText(text);
                      },
                      controller: _textEditingController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        hintText: '000 000',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: _textEditingController.text.length > 0
                            ? IconButton(
                                icon: Icon(
                                  Icons.cancel,
                                ),
                                onPressed: () => _textEditingController.clear())
                            : null,
                      ),
                    );
            }),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 130, 0, 10),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Text(
                        "Đổi lại số điện thoại",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Gửi lại OTP",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ),
            GetBuilder<OtpController>(builder: (_) {
              return _.count == 1
                  ? ButtonTheme(
                      height: 50,
                      child: FlatButton(
                        color: Colors.blue[200],
                        onPressed: () {
                          print(_textEditingController.text);
                        },
                        child: Center(
                          child: Text(
                            "TIẾP TỤC",
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    )
                  : ButtonTheme(
                      height: 50,
                      child: FlatButton(
                        color: Colors.white,
                        onPressed: () {
                          print(_textEditingController.text);
                        },
                        child: Center(
                          child: Text(
                            "TIẾP TỤC",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                        shape: new RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white, width: 1),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                    );
            })
          ],
        ),
      ),
    );
  }
}

class Countdown extends AnimatedWidget {
  Countdown({Key key, this.animation}) : super(key: key, listenable: animation);
  Animation<int> animation;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    String timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}:${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}';

    print('animation.value  ${animation.value} ');
    print('inMinutes ${clockTimer.inMinutes.toString()}');
    print('inSeconds ${clockTimer.inSeconds.toString()}');
    print(
        'inSeconds.remainder ${clockTimer.inSeconds.remainder(60).toString()}');

    return Text(
      "$timerText",
      style: TextStyle(
        fontSize: 110,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
