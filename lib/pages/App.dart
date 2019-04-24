import 'package:flutter/material.dart';
import 'Home.dart';
import 'FoodDetail.dart';
import 'FoodsList.dart';
/*
* App主页
* */

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MyHomePage(title:'每周菜单');
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _tabIndex=0;
  var pages;

  @override
  void initState(){
    super.initState();
    pages = <Widget>[
      HomePage(),
      FoodsList(),
      FoodDetail(),
    ];
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.yellow,
        highlightColor: Colors.yellow,
        splashColor: Colors.yellow,
      ),
//      routes: ,
      home: Scaffold(
        body: pages[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                title: Text("主页")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.camera),
                title: Text("我的")
            ),
          ],
          currentIndex: _tabIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index){
            setState(() {
              _tabIndex = index;
            });
          },
        ) ,
      ),
    );
  }
}