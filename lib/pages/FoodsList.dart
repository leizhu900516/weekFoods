/*
* 周*的菜品列表页面
*
* */
import 'package:flutter/material.dart';
import 'FoodDetail.dart';
import '../main.dart';
import 'App.dart';
import 'sqfliteUtils.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FoodsList extends StatefulWidget{
  @override
  _FoodsList createState()=> _FoodsList();
}

class _FoodsList extends State<FoodsList>{
  SqfLiteTool sqflitetool = new SqfLiteTool();
  
  
  @override
  void initState(){
    super.initState();
    insertData();
    print("插入成功");
    getAllFoods();

  }

  void getAllFoods() async {
    await sqflitetool.openSqfLite();
    List<Foods> foods = await sqflitetool.queryAll();

    foods.forEach((a)=>print(a));
  }

  void insertData() async {
    await sqflitetool.openSqfLite();
    await sqflitetool.insert(Foods(null,'酸辣土豆丝','陈华超','这是一个内容','https://i3.meishichina.com/attachment/mofang/2019/04/22/20190422155592442723610169539.jpg'));

  }
  @override
  void dispose(){
    closeSqflite();
  }

  void closeSqflite() async {
    await sqflitetool.close();
  }


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
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context,index)=>
            GestureDetector(
              child: Container(
                height: 80,
                margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
                child:Row(
                  children: <Widget>[
                    Expanded(child: Container(
                      decoration: new BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('static/images/monday.jpg'),
                          fit:BoxFit.fill
                        ),
                        //        borderRadius: new BorderRadius.circular((20.0)), // 圆角度
                        borderRadius: BorderRadius.circular((8.0)),

                      ),
  //                    child: Image.asset('static/images/monday.jpg',fit: BoxFit.fill,height: 80,),
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


      ),
//        StaggeredGridView.countBuilder(
//          crossAxisCount: 4,
//          itemCount: 8,
//          itemBuilder: (BuildContext context, int index) => new Container(
//              color: Colors.green,
//              child: new Center(
//                child: new CircleAvatar(
//                  backgroundColor: Colors.white,
//                  child: new Text('$index'),
//                ),
//              )),
//          staggeredTileBuilder: (int index) =>
//          new StaggeredTile.count(2, index.isEven ? 2 : 1),
//          mainAxisSpacing: 4.0,
//          crossAxisSpacing: 4.0,
//        ),
    );
  }
}