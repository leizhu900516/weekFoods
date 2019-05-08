import 'package:flutter/material.dart';


class MyItemsInfo extends StatelessWidget{
//  @override
//  _MyItemInfoState createState() => _MyItemInfoState();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("我的"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0,bottom: 10.0),
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 80,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('static/images/me.jpg'),
                        radius: 1.0,
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[
                          Container(
                            padding:  EdgeInsets.only(bottom: 8.0),
                            child: Text("陈华超",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF20242A),
                                  fontSize: 20.0
                                  ),
                            ),
                          ),
                          Text("就是爱美食",style: TextStyle(
                              color: Color(0xFF5B6066)
                          ),)
                        ],
                      ),
                    ),
                    flex: 3,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0,bottom: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("我的收藏"),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.mail),
                    title: Text("我的收藏"),
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}

//class _MyItemInfoState extends State<MyItemsInfo>{
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return null;
//  }
//}

