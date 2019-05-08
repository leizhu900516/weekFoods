import 'package:flutter/material.dart';
import 'Home.dart';
import 'App.dart';
/*
* 搜索页面
* */
class Search extends StatefulWidget{
  @override
  _SearchState createState()=> _SearchState();
}


class _SearchState extends State<Search>{
  TextEditingController _searchController = new TextEditingController();

  // 光标跳转的输入框对象
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    Container searchField = new Container(
       child: TextField(
         style: new TextStyle(color: Colors.white),
         autofocus: false,
         focusNode: focusNode,
         decoration: new InputDecoration(
             border: InputBorder.none,
//             fillColor: Colors.white,
             hintText: '搜你想搜的',
             hintStyle: new TextStyle(color: Colors.white),
             labelStyle: new TextStyle(color: Colors.white)),
         controller: _searchController,
       ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Colors.black
      ),
      padding: EdgeInsets.only(left: 15.0),
    );

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (_){
              return MyApp();
            }));
          },
        ), //# todo 返回上一页
        title: searchField,
        actions: <Widget>[
          GestureDetector(
            child: Icon(Icons.close),
            onTap: (){
              print("返回");
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("最近搜索"),
            Row(
              children: <Widget>[
                Chip(label: Text('铁锅'),onDeleted: (){
                  print("delete chip");
                },),
                Container(margin: EdgeInsets.only(left: 10.0),),
                Chip(label: Text('砂锅')),
                Container(margin: EdgeInsets.only(left: 10.0),),
                Chip(label: Text('不锈钢')),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
            ),
            Text("热门搜索"),
            Row(
              children: <Widget>[
                Chip(label: Text('铁锅')),
                Chip(label: Text('砂锅')),
                Chip(label: Text('不锈钢')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}