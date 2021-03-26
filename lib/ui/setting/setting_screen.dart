import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/setting/change_pass/change_pass_screen.dart';

class SettingScreen extends GetWidget{

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Image.asset("image/appbar.png", fit: BoxFit.cover,),
        title: Text("Cài đặt"),
        actions: [
          IconButton(icon: Icon(Icons.help_outline, color: Colors.white,), onPressed: null)
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all( width*0.06, ),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Get.to(ChangePassScreen());
                },
                child: Row(
                  children: [
                    Icon(Icons.lock_outline_rounded, color: Colors.blue,),
                    Text("  Thay đổi mật khẩu  ", style: TextStyle( color: Colors.black, fontSize: 16),),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
                  ],
                )
              ),
            ),
            Divider(color: Colors.grey,),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.security_rounded, color: Colors.blue,),
                      Text("  Câu hỏi bảo mật  ", style: TextStyle( color: Colors.black, fontSize: 16),),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
                    ],
                  )
              ),
            ),
            Divider(color: Colors.grey,),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.fingerprint, color: Colors.blue,),
                      Text("  Xác thực sinh trắc học  ", style: TextStyle( color: Colors.black, fontSize: 16),),
                      Spacer(),
                      Switch(value: true, onChanged: (_){})
                    ],
                  )
              ),
            ),
            Divider(color: Colors.grey,),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.access_time_sharp, color: Colors.blue,),
                      Text("  Tự động khóa ứng dụng  ", style: TextStyle( color: Colors.black, fontSize: 16),),
                      Spacer(),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
                    ],
                  )
              ),
            ),
            Divider(color: Colors.grey,),
            Expanded(
              flex: 1,
              child: GestureDetector(
                  child: Row(
                    children: [
                      Icon(Icons.vpn_lock, color: Colors.blue,),
                      Text("  Ngôn ngữ  ", style: TextStyle( color: Colors.black, fontSize: 16),),
                      Spacer(),
                      Text("Tiếng Việt", style: TextStyle( color: Colors.grey, fontSize: 16), ),
                      Icon(Icons.keyboard_arrow_right, color: Colors.grey,)
                    ],
                  )
              ),
            ),
            Divider(color: Colors.grey,),
            SizedBox(
              height: height/2,
            )
          ],
        ),
      ),
    );
  }

}