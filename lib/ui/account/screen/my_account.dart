import 'package:easy_dialogs/easy_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/account/controller/account_controller.dart';
import 'package:ui_mygovvn/ui/account/screen/search_city.dart';
import 'package:ui_mygovvn/ui/account/screen/search_phuong.dart';
import 'package:ui_mygovvn/ui/account/screen/search_quan.dart';

const color0 = const Color(0xFFC6C6C8);
const color1 = const Color(0xFFF2F2F7);
const color2 = const Color(0xFF8898AA);
const color3 = const Color(0xFF1E5AAA);
final List<String> genders = ['Nam', 'Nữ'];

class MyAccount extends StatefulWidget {
  @override
  _MyAccount createState() => _MyAccount();
}

class _MyAccount extends State<MyAccount> {
  TextEditingController emailController = new TextEditingController();
  TextEditingController tinhController = new TextEditingController();
  TextEditingController huyenController = new TextEditingController();
  TextEditingController phuongController = new TextEditingController();
  TextEditingController diaChiController = new TextEditingController();
  TextEditingController genderController = new TextEditingController();
  AccountController accountController = Get.put(AccountController());
  DateTime picker = DateTime.now();
  String gender = 'Nam';

  @override
  Widget build(BuildContext context) {
    print("CONTROLLER ${tinhController.text}");
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Tài Khoản Của Tôi",
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w500),
          ),
          flexibleSpace: Image(
            image: AssetImage('image/appbar.png'),
            fit: BoxFit.cover,
          )),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      // color: color1,
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color0,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Họ và tên",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "Nguyễn Thanh Tùng",
                            style: TextStyle(
                                fontSize: 16,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      // color: color1,
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color0,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Số điện thoại",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "0987 654 321",
                            style: TextStyle(
                                fontSize: 16,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      // color: color1,
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color0,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(16, 8, 0, 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Số CMND/CCCD",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            "0353 0000 1010",
                            style: TextStyle(
                                fontSize: 16,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      // color: color1,
                      height: 0.07 * height,
                      decoration: BoxDecoration(
                          color: color1,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: color0,
                              style: BorderStyle.solid,
                              width: 0.5)),
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ngày sinh",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: color2,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  '${picker.day}/${picker.month}/${picker.year}',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                      fontFamily: 'Quicksand',
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: chooseDate,
                              child: Image.asset(
                                'image/calendar_icon.png',
                                height: 20,
                              ),
                            )
                          ],
                        ))
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      // padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Giới tính",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          TextField(
                            controller: genderController,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: gender,
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: color2,
                              ),
                              onPressed: () {
                                _openRingtoneDialog();
                              })
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          GetBuilder<AccountController>(builder: (_) {
                            return _.count == 1
                                ? TextField(
                                    controller: emailController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Nhập email",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: color2,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      accountController.checkEmail(value);
                                    },
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        controller: emailController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Nhập email",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: color2,
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          accountController.checkEmail(value);
                                        },
                                      ),
                                      Text("Chưa đúng định dạng Email",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.red,
                                              fontFamily: 'Quicksand',
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tỉnh/Thành phố",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          TextField(
                            controller: tinhController,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Chọn Tỉnh/Thành phố",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: color2,
                              ),
                              onPressed: () async {
                              final data = await  Get.to(SearchCity());
                              tinhController.text = data;
                              })
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Quận/Huyện",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          TextField(
                            controller: huyenController,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Chọn Quận/Huyện",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: color2,
                              ),
                              onPressed: () async{
                                final data = await Get.to(SearchQuan());
                                huyenController.text = data;
                              })
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Phường/Xã",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          TextField(
                            controller: phuongController,
                            readOnly: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Chọn Phường/Xã",
                              hintStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black87,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.keyboard_arrow_down_outlined,
                                color: color2,
                              ),
                              onPressed: () async {
                                final data = await Get.to(SearchPhuong());
                                phuongController.text = data;
                              })
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Stack(
                  children: [
                    Container(
                      height: height * 0.075,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        border: Border.all(
                            color: color0,
                            style: BorderStyle.solid,
                            width: 0.5),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8, 6, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Địa chỉ cụ thể",
                            style: TextStyle(
                                fontSize: 13,
                                color: color2,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w400),
                          ),
                          GetBuilder<AccountController>(builder: (_) {
                            return _.check == 1
                                ? TextField(
                                    controller: diaChiController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: "Nhập địa chỉ",
                                      hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: color2,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onChanged: (value) {
                                      accountController.checkDC(value);
                                    },
                                  )
                                : Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        controller: diaChiController,
                                        decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Nhập địa chỉ",
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: color2,
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        onChanged: (value) {
                                          accountController.checkDC(value);
                                        },
                                      ),
                                      Text("Địa chỉ không được để trống",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.red,
                                              fontFamily: 'Quicksand',
                                              fontWeight: FontWeight.w400)),
                                    ],
                                  );
                          }),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.08,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
        child: GetBuilder<AccountController>(builder: (_) {
          print("COUNT");
          print(_.count);
          return _.count == 0
              ? ButtonTheme(
                  height: height * 0.05,
                  minWidth: width * 0.9,
                  child: FlatButton(
                    color: color3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {},
                    child: Text(
                      "XÁC NHẬN",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              : ButtonTheme(
                  height: height * 0.05,
                  minWidth: width * 0.9,
                  child: FlatButton(
                    color: color3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    onPressed: () {},
                    child: Text(
                      "XÁC NHẬN",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                );
        }),
      ),
    );
  }

  chooseDate() async {
    DateTime date = await showDatePicker(
        context: context,
        initialDate: picker,
        firstDate: DateTime(DateTime.now().year - 5),
        lastDate: DateTime(DateTime.now().year + 5));
    if (date != null) {
      setState(() {
        picker = date;
      });
    }
  }

  _openRingtoneDialog() {
    showDialog(
        context: context,
        builder: (context) => SingleChoiceConfirmationDialog<String>(
            title: Text('Chọn giới tính'),
            initialValue: gender,
            items: genders,
            onSelected: _onSelected,
            onSubmitted: _onSubmitted));
  }

  void _onSelected(String value) {
    print('Selected $value');
    setState(() {
      genderController.text = value;
    });
  }

  void _onSubmitted(String value) {
    print('Submitted $value');
    setState(() {
      genderController.text = value;
    });
  }
}
