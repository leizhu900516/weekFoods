/*
* 周*的菜品列表页面
*
* */
import 'package:flutter/material.dart';
import 'Home.dart';
import 'FoodDetail.dart';
import '../main.dart';

class FoodsList extends StatefulWidget{
  @override
  _FoodsList createState()=> _FoodsList();
}

class _FoodsList extends State<FoodsList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_){
            return MyHomePage();
          }));
        }),
        title: Text("列表页")

      ),
      body: ListView(
        children: <Widget>[
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              child:Row(
                children: <Widget>[
                  Expanded(child: Container(
                    decoration: new BoxDecoration(

                      //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                      borderRadius: BorderRadius.circular((20.0)),
                    ),
                    child: Image.asset('static/images/monday.jpg',fit: BoxFit.fill,height: 80,),
                  ),flex: 1,),
                  Expanded(
                    flex: 3,
                    child: Padding(padding: EdgeInsets.only(left: 10),child: Text("酸辣土豆丝",style: TextStyle(fontSize: 20,),),),
                  ),
                ],
              ) ,
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodDetail();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              child:Row(
                children: <Widget>[
                  Expanded(child: Container(
                    decoration: new BoxDecoration(

                      //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                      borderRadius: BorderRadius.circular((20.0)),
                    ),
                    child: Image.asset('static/images/monday.jpg',fit: BoxFit.fill,height: 80,),
                  ),flex: 1,),
                  Expanded(
                    flex: 3,
                    child: Padding(padding: EdgeInsets.only(left: 10),child: Text("酸辣土豆丝",style: TextStyle(fontSize: 20,),),),
                  ),
                ],
              ) ,
            ),
          ),

        ],
      ),
    );
  }
}