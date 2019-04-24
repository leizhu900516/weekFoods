/*
* 食谱详情页面
*
* */
import 'package:flutter/material.dart';
import 'FoodsList.dart';


class FoodDetail extends StatefulWidget{
  @override
  _FoodDetail createState()=> _FoodDetail();
}

class _FoodDetail extends State<FoodDetail>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){
//          Navigator.of(context).push(MaterialPageRoute(builder: (_){
//            return FoodsList();
//          }));
//        }),
//        title: Text("这是标题"),
//
//      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: ()=> Navigator.pop(context),
            ),
            automaticallyImplyLeading: true,
            centerTitle: true,
            actions: <Widget>[
              Icon(Icons.archive)
            ],
            elevation: 4,
            title: Text("title"),//默认上滑 不会消失
            forceElevated: false,
            backgroundColor: Colors.yellow,
            brightness: Brightness.dark,
            iconTheme: IconThemeData(
                color: Colors.red,
                size: 30,
                opacity: 1), //所有的icon的样式,不仅仅是左侧的，右侧的也会改变
            textTheme: TextTheme(), //字体样式
            primary: true, // appbar是否显示在屏幕的最上面，为false是显示在最上面，为true就显示在状态栏的下面
            titleSpacing: 16, //标题两边的空白区域
            expandedHeight: 200.0, //默认高度是状态栏和导航栏的高度，如果有滚动视差的话，要大于前两者的高度
            floating: false, //滑动到最上面，再滑动是否隐藏导航栏的文字和标题等的具体内容，为true是隐藏，为false是不隐藏
            pinned: true, //是否固定导航栏，为true是固定，为false是不固定，往上滑，导航栏可以隐藏
            snap: false, //只跟floating相对应，如果为true，floating必须为true，也就是向下滑动一点儿，整个大背景就会动画显示全部，网上滑动整个导航栏的内容就会消失
            flexibleSpace: FlexibleSpaceBar(
              title: Text("随着内容一起滑动的头部"),
              centerTitle: true,
              collapseMode: CollapseMode.pin,
              background: Image.asset("static/images/monday.jpg",fit: BoxFit.cover,),
            ),
          ),
//          SliverFixedExtentList(
//
//              delegate: SliverChildBuilderDelegate((context,index) => ListTile(title: Text("list item $index"),)),
//              itemExtent: 1.0,
//
//          ),
//          SliverGrid(
//            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//              maxCrossAxisExtent: 200.0,
//              mainAxisSpacing: 10.0,
//              crossAxisSpacing: 10.0,
//              childAspectRatio: 4.0,
//            ),
//            delegate: SliverChildBuilderDelegate(
//                  (BuildContext context, int index) {
//                return Container(
//                  alignment: Alignment.center,
//                  color: Colors.teal[100 * (index % 9)],
//                  child: Text('grid item $index'),
//                );
//              },
//              childCount: 20,
//            ),
//          ),
//          SliverSafeArea(sliver: null)
        SliverPadding(
          padding: EdgeInsets.all(20.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                Image.asset("static/images/monday.jpg"),
                Text("这是描述信息，"),
                Text("这是描述信息，"),
                Text("这是描述信息，"),
                Text("这是描述信息，"),
              ]
            ),
          ),
        ),
        ],
      ),
    );
  }
}

