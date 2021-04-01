import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Begin extends GetWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("image/begin.png"),
            fit: BoxFit.cover
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 300),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Image.asset("image/imagebegin.png", width: 100, height: 100,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  "BỘ THÔNG TIN VÀ TRUYỀN THÔNG", style: TextStyle( fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "MYGOVVN", style: TextStyle( fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
              )
            ],
          ),
        )
      ),
    );
  }

}