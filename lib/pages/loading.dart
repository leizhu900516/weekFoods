/*
* 启动页面 3秒后 跳转到App主页
*
* */

import 'package:flutter/material.dart';
import 'dart:async';
import 'App.dart';
import 'Home.dart';


class LoadingPage extends StatefulWidget{
  @override
  _LoadingState createState() => new _LoadingState();

}

class _LoadingState extends State<LoadingPage>{

  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      print("Flutter start ");
      Navigator.of(context).push(MaterialPageRoute(builder: (_){
        return MyApp();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Image.asset("static/images/loading.png"),
    );
  }
}