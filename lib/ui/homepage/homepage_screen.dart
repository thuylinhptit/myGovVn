import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/bhxh/bhxh_screen.dart';

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
                padding: EdgeInsets.only(
                    left: 0.08 * width,
                    top: 0.05 * height,
                    right: 0.08 * width),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        "image/avt.png",
                        fit: BoxFit.fill,
                        height: 0.15 * width,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        "Nguyễn Thanh Tùng",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    //  IconButton(icon: Icon(Icons.search), onPressed: null, color: Colors.white,),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: 0.08 * width,
                    top: 0.08 * height,
                    right: 0.08 * width),
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
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 0.06 * width,
                    top: 0.07 * height,
                    right: 0.06 * width),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(BaoHiemScreen());
                        },
                        child: Image(
                          width: (width - 0.16 * width) / 4 - 0.05 * width,
                          image: AssetImage(
                            "image/bhxh.png",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.05 * width,
                        image: AssetImage("image/thue.png"),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.05 * width,
                        image: AssetImage("image/diemthi.png"),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.05 * width,
                        image: AssetImage("image/chuyenmang.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 0.03 * width, right: 0.03 * width),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text("Tra cứu mã số BHXH",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Tra cứu mã số thuế",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Tra cứu điểm thi THPT",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Tra cứu chuyển mạng giữ số",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding:
                    EdgeInsets.only(left: 0.06 * width, right: 0.06 * width),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.02 * width,
                        image: AssetImage("image/tracuoc.png"),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.02 * width,
                        image: AssetImage("image/thuebao.png"),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.02 * width,
                        image: AssetImage("image/tiemchung.png"),
                      ),
                    ),
                    SizedBox(
                      width: 0.04 * width,
                    ),
                    Expanded(
                      flex: 1,
                      child: Image(
                        width: (width - 0.16 * width) / 4 - 0.02 * width,
                        image: AssetImage("image/Xemthem.png"),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 0.03 * width, right: 0.03 * width),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Tra cứu cước điện thoại",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Khai báo thông tin thuê bao",
                          style: TextStyle(
                              fontSize: 11.5,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Tiêm chủng",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                        flex: 1,
                        child: Text(
                          "Xem thêm",
                          style: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        )),
                  ],
                ),
              )
            ],
          ),
          Image(
            image: AssetImage("image/bottom_backgr.png"),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text(
                'Trang chủ',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w400),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_sharp),
              title: Text('Lịch sử',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400))),
          BottomNavigationBarItem(
              icon: Image.asset(
                "image/scan.png",
                height: 0.05 * height,
              ),
              title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('Thông báo',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Tài khoản',
                  style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w400)))
        ],
      ),
    );
  }
}
