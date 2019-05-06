/*
* 主页
*
*/
import 'package:flutter/material.dart';
import 'FoodsList.dart';


class HomePage extends StatefulWidget{
  @override
  _HomePage createState()=> _HomePage();
}

class _HomePage extends State<HomePage>{


  @override
  void initState(){
    print("初始化");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width-60,
              margin: EdgeInsets.all(1.0),
              padding: EdgeInsets.only(left: 10.0,right: 0,top: 3.0,bottom: 3.0),
              decoration: BoxDecoration(
                  color: Color(0xFFD2D2D2),
                  borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.search),
                  Text("搜索"),
                ],
              ),
            ),
            Icon(IconData(0xe616,fontFamily: 'AppIconFont'),color: Color(0xFF20242A),),
          ],
        ) ,
      ),

      body: GridView.count(
        scrollDirection: Axis.vertical,
        reverse: false,
//        controller: scrollController,
        primary: false,
        physics: AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.all(15.0),
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        childAspectRatio: 1,
        children: <Widget>[
//          Container(
//            constraints: new BoxConstraints.expand(
//              height:Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
//            ),
//            decoration: new BoxDecoration(
////              border: new Border.all(width: 2.0, color: Colors.red),
////              color: Colors.grey,
//              borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
//              image: new DecorationImage(
//                image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
//                centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//              ),
//            ),
//            padding: const EdgeInsets.all(8.0),
//            alignment: Alignment.center,
//            child: new Text('Hello World',
//                style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black)),
//            transform: new Matrix4.rotationZ(0.3),//旋转属性
//          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期一",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期二",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期三",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期四",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期五",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期六",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
          GestureDetector(
            child: Container(
              height: 200,

              decoration: BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.yellow,
              ),
              child: Center(
                child: Text("星期日",style: TextStyle(fontSize: 30,color:Color(0xFF20242A),fontWeight: FontWeight.bold),),
              ),
            ),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_){
                return FoodsList();
              }));
            },
          ),
        ],
      ),
    );
  }
}