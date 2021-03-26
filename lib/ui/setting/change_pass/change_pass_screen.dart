import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/setting/controller/controller_change_pass.dart';

class ChangePassScreen extends GetWidget {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  ChangePassController changePassController = Get.put(ChangePassController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset(
          "image/appbar.png",
          fit: BoxFit.cover,
        ),
        title: Text("Cài đặt"),
        actions: [
          IconButton(
              icon: Icon(
                Icons.help_outline,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: EdgeInsets.only(left: 0.03 * width, right: 0.03 * width),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.02,
              ),
              Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 0.01 * width,
                        left: 0.03 * width,
                        right: 0.03 * width),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mật khẩu cũ",
                              style: TextStyle(color: Colors.blue),
                            ),
                            GetBuilder<ChangePassController>(builder: (_){
                              return TextField(
                                onChanged: (text) {
                                  changePassController.checkText(text);
                                },
                                controller: controller1,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  fillColor: Colors.white,
                                  hintText: 'Nhắc mật khẩu cũ',
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              );
                            })
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GetBuilder<ChangePassController>(builder: (_){
                              return IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: null);
                            })
                          ],
                        )
                      ],
                    ),
                  )),
              Spacer(),
              Text("Quên mật khẩu"),
              SizedBox(
                height: height * 0.02,
              ),
              GetBuilder<ChangePassController>(builder: (_) {
                return controller1.text.length > 0
                    ? ButtonTheme(
                        height: 50,
                        child: FlatButton(
                          color: Colors.blue,
                          onPressed: () {
                            // print(_textEditingController.text);
                          },
                          child: Center(
                            child: Text(
                              "XÁC NHẬN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
                          color: Colors.grey,
                          onPressed: () {
                            // print(_textEditingController.text);
                          },
                          child: Center(
                            child: Text(
                              "XÁC NHẬN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
                height: height * 0.12,
              )
            ],
          ),
        ),
      ),
    );
  }
}
