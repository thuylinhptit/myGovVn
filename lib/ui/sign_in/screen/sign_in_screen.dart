import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:ui_mygovvn/ui/sign_in/controller/controller_sign_in.dart';
import 'package:ui_mygovvn/ui/sign_in/screen/otp_screen.dart';

class SignIn extends GetWidget{
  TextEditingController _textEditingController = TextEditingController();
  SignInController controllerSignIn = Get.put( SignInController());
  String str;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print( controllerSignIn.count );
    return Scaffold(
            resizeToAvoidBottomPadding: false,
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("image/background.png"),
                      fit: BoxFit.cover
                  )
              ),
              child: Container(
              padding: EdgeInsets.only(left: 0.06*width, right: 0.06*width, bottom: 0.03*height, top: 0.2*height),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Text(
                            "Nhập số điện thoại", style: TextStyle( fontSize: 28, color: Colors.white, fontFamily: 'Quicksand', fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0.01*height,),
                    GetBuilder<SignInController>(builder: (_){
                      return _.count == 1 ? TextField(
                          onChanged: (text){
                            controllerSignIn.checkText(text);
                            str = controllerSignIn.updateText(text);
                          },
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                            hintText: 'Số điện thoại của bạn',
                            hintStyle: TextStyle( color: Colors.grey, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                            suffixIcon: _textEditingController.text.length > 0
                                ? IconButton(icon: Icon(Icons.cancel,), onPressed: () => _textEditingController.clear())
                                : null,
                        ),
                      ): _.count == 2 ? Column(
                            children: [
                              TextField(
                                onChanged: (text){
                                  controllerSignIn.checkText(text);
                                  str = controllerSignIn.updateText(text);
                                  // _textEditingController.text = val;
                                },
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  hintText: 'Số điện thoại của bạn',
                                  hintStyle: TextStyle( color: Colors.grey, fontFamily: 'Quicksand', fontWeight: FontWeight.w400),
                                  suffixIcon: _textEditingController.text.length > 0
                                      ? IconButton(icon: Icon(Icons.cancel,), onPressed: (){
                                    _textEditingController.clear();
                                    _.changeCount();
                                  })
                                      : null,
                                ),
                              ),
                              Text( "Chỉ được điền số", style: TextStyle(fontSize: 15, color: Colors.red),)
                            ],
                      ) : Column(
                            children: [
                              TextField(
                                onChanged: (text){
                                  controllerSignIn.checkText(text);
                                  str = controllerSignIn.updateText(text);
                                  // _textEditingController.text = val;
                                },
                                controller: _textEditingController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0)
                                  ),
                                  hintText: 'Số điện thoại của bạn',
                                  hintStyle: TextStyle( color: Colors.grey),
                                ),
                              ),
                            ],
                      );
                    }
                    ),
                    Spacer(),
                    RichText(
                          text: TextSpan(
                              children: [
                                TextSpan(text: "Bằng việc chọn Tiếp tục, bạn hãy đồng ý với",
                                    style: TextStyle( color: Colors.white, fontSize: 15)),
                                TextSpan( text: " Điều khoản & Điều kiện",  style: TextStyle( color: Colors.yellowAccent, fontSize: 15,) ),
                                TextSpan( text: " cùng ",  style: TextStyle( color: Colors.white , fontSize: 15,) ),
                                TextSpan( text: "Chính sách bảo mật và chi sẻ thông tin",  style: TextStyle( color: Colors.yellowAccent, fontSize: 15,) ),
                                TextSpan( text: " của MYGOVVN",  style: TextStyle( color: Colors.white, fontSize: 15,) ),
                              ]
                          ),
                    ),
                    SizedBox(height: 0.01*height,),
                    GetBuilder<SignInController>(builder: (_){
                      print(_.count);
                      return _textEditingController.text.length > 0 ?ButtonTheme(
                          height: 50,
                          child: FlatButton(
                            color: Colors.blue[200],
                            onPressed: (){
                              Get.to(ScreenOTP(), arguments: str);
                            },
                            child: Center(
                              child: Text("TIẾP TỤC", style: TextStyle(color: Colors.black, fontSize: 16 ),),
                            ),
                            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.blue[200], width: 1) ,
                              borderRadius: new BorderRadius.circular(10.0),),
                          ),

                      ) :ButtonTheme(
                          height: 50,
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: (){
                              print(_textEditingController.text);
                            },
                            child: Center(
                              child: Text("TIẾP TỤC", style: TextStyle(color: Colors.grey, fontSize: 16 , fontFamily: 'Quicksand'),),
                            ),
                            shape: new RoundedRectangleBorder(side: BorderSide(color: Colors.white, width: 1) ,
                              borderRadius: new BorderRadius.circular(10.0),),
                          ),

                      );
                    }),
                    SizedBox(height: height*0.25,),
                  ],
                ),
              ),
            ),

      );
}

}