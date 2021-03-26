import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/setting/controller/controller_change_pass.dart';

class ItemChangePass extends GetWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final bool check;
  final void function;
  final TextEditingController textEditingController;
  ChangePassController changePassController = Get.put(ChangePassController());

  ItemChangePass(
      {this.function,
      this.check,
      this.textEditingController,
      this.title,
      this.subtitle,
      this.icon});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey, width: 1)),
        child: Padding(
          padding: EdgeInsets.only(top: 5, left: 10),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: Colors.blue),
                  ),
                  GetBuilder<ChangePassController>(builder: (_){
                    return TextField(
                      onChanged: (text) {
                        changePassController.updateText(text);
                        //  passWordController.displayIconEyes();
                      },
                      controller: textEditingController,
                      // obscureText: _.check2 == true ? true : false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Nhắc lại mật khẩu',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    );
                  })
                ],
              ),
              Padding(
                  padding: EdgeInsets.all(height * 0.02),
                  child: Row(
                    children: [
                      Spacer(),
                      IconButton(
                          icon: icon,
                          onPressed: () {
                            // _.displayIconEyes1();
                          }),
                    ],
                  ))
            ],
          ),
        ));
  }
}
