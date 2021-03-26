import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/bhxh/bhxh_screen.dart';
import 'package:ui_mygovvn/ui/setting/setting_screen.dart';


class HomePageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image(image: AssetImage("image/top_backgr.png")),
                  Padding(
                    padding: EdgeInsets.only(left: 0.08*width, top: 0.08*height , right: 0.08*width),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset("image/avt.png", fit: BoxFit.fill, height: 0.15*width,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "Họ và tên",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        //  IconButton(icon: Icon(Icons.search), onPressed: null, color: Colors.white,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.08*width, top: 0.08*height , right: 0.08*width),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconTheme(
                          data: IconThemeData(color: Colors.white),
                          child: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.06*width, top: 0.08*height , right: 0.06*width),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap:(){
                                  Get.to(SettingScreen());
                                },
                                child: Image(
                                  width: (width-0.16*width)/4 - 0.02*width,
                                  image: AssetImage("image/bhxh.png",),
                                ),
                              ),
                              Text("Tra cứu mã số BHXH", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,),
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/thue.png"),
                              ),
                              Text("Tra cứu mã số thuế", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/diemthi.png"),
                              ),
                              Text("Tra cứu điểm thi THPT", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/chuyenmang.png"),
                              ),
                              Text("Tra cứu chuyển mạng giữ số", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),

                      ],
                    ),
                    SizedBox(height: height*0.02),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/tracuoc.png"),
                              ),
                              Text("Tra cứu cước điện thoại", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/thuebao.png"),
                              ),
                              Text("Khai báo thông tin thuê bao", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Image(
                                width: (width-0.16*width)/4 - 0.02*width,
                                image: AssetImage("image/tiemchung.png"),
                              ),
                              Text("Tiêm chủng", style: TextStyle(fontSize: 12,), textAlign: TextAlign.center,)
                            ],
                          )
                        ),
                        Expanded(
                          flex: 1,
                          child: Image(
                            width: (width-0.16*width)/4 - 0.02*width,
                            image: AssetImage("image/Xemthem.png"),
                          ),
                        ),

                      ],
                    )
                  ],
                ),
              ),
          //    SizedBox(height: 0.01*height,),
              Image(image: AssetImage("image/bottom_backgr.png"),),
            ],
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
             BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Trang chủ')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time_sharp ),
              title: Text('Lịch sử')
            ),
            BottomNavigationBarItem(
              icon: Image.asset("image/scan.png", height: 0.05*height,),
              title: Text('')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Thông báo')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text('Tài khoản')
            )
          ],
        ),
    );
  }
}
