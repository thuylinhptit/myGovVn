import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class ConfirmScreen extends GetWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
   return Scaffold(
     body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("image/background.png"),
          fit: BoxFit.cover
         )
       ),
       child: Padding(
         padding: EdgeInsets.only(left: 0.06*width, top: 0.06*height, right: 0.06*width),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             IconButton(
               icon: Icon(Icons.arrow_back, color: Colors.white,),
             ),
             Padding(
               padding: EdgeInsets.only(top: 0.04*height, ),
               child: Text(
                 "Xác thực tài khoản", style: TextStyle( color: Colors.white, fontSize: 28, fontFamily: 'Quicksand', fontWeight: FontWeight.w500) ,
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 0.05*height, ),
               child: Text(
                 "Chọn phương thức xác thực Chứng minh nhân dân hoặc Thẻ căn cước công dân của bạn",
                 style: TextStyle( color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w400) ,
               ),
             ),
             Padding(
               padding: EdgeInsets.only(left: 0.04*width, right: 0.04*width, bottom: 0.04*width),
               child: Row(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(right: width*0.02),
                     child: Image(image: AssetImage("image/icon1.png"), height: width*0.2, width: width*0.2,),
                   ),
                   Text("Giao tiếp NFC",style: TextStyle( color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w500),)
                 ],
               ),
             ),
             Divider(color: Colors.white,),
             Padding(
               padding:EdgeInsets.only(left: 0.04*width, right: 0.04*width, bottom: 0.04*width, top: 0.04*width),
               child: Row(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(right: width*0.02),
                     child: Image(image: AssetImage("image/icon2.png"), height: width*0.2, width: width*0.2,),
                   ),
                   Text("Quét mã QR trên Thẻ CCCD",style: TextStyle( color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w500),)
                 ],
               ),
             ),
             Divider(color: Colors.white,),
             Padding(
               padding: EdgeInsets.only(left: 0.04*width, right: 0.04*width, bottom: 0.04*width, top: 0.04*width),
               child: Row(
                 children: [
                   Padding(
                     padding: EdgeInsets.only(right: width*0.02),
                     child: Image(image: AssetImage("image/icon3.png"), height: width*0.2, width: width*0.2,),
                   ),
                   Text("Chụp ảnh CMND/CCCD",style: TextStyle( color: Colors.white, fontSize: 16, fontFamily: 'Quicksand', fontWeight: FontWeight.w500),)
                 ],
               ),
             ),
           ],
         ),
       )

     ),
   );
  }

}