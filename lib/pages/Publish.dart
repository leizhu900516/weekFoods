import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
//import 'package:async/async.dart';


class PublishFood extends StatefulWidget{

  @override
  _PublishFoodState createState() => _PublishFoodState();
}

class _PublishFoodState extends State<PublishFood>{
  var  _name = '';
  var _imgPath;
  //定义表单实例
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _title = '';
  String _content = '';


  void _forSubmitted() {
    var _form = _formKey.currentState;

    if (_form.validate()) {
      _form.save();
      print("提交了");
      print(_title);
      print(_content);
    }
  }

  /*图片控件*/
  Widget _ImageView(imgPath) {
    if (imgPath == null) {
      return Container(
        child: Center(
          child: Text("请选择图片或拍照"),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0))
        ),
        child: Image.file(
          imgPath,
        ),
      );
    }
  }

  void _uploadPhoto() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _imgPath = image;
    });
  }

  void _selectPhoto() async{
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _imgPath = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("发布新菜品"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child:Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    _ImageView(_imgPath),
                    GestureDetector(
                      child: Container(
                          padding: EdgeInsets.only(top:35.0 ),
                          decoration: BoxDecoration(
                              color: Color(0xFFD2D2D2)
                          ),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                Icon(IconData(0xe654,fontFamily: 'AppIconFont'),color: Color(0xFF5B6066),),
                                Text("添加照片视频"),
                              ],
                            ),
                          )
                      ),
                      onTap:(){
                        _uploadPhoto();
                      },
                    ),

                    Container(
                      child: RaisedButton(onPressed: _selectPhoto,child: Text("选择照片"),),
                    ),
                  ],
                ),



                TextFormField(
                  decoration: InputDecoration(labelText: "标题"),
                  validator: (String value){
                    if (value.isEmpty){
                      return '标题不能为空';
                    }
                  },
                  onSaved: (String title){
                    _title = title;
//                    print(title);
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: "描述信息"),
                  validator: (String value){
                    if (value.isEmpty || value.length<20){
                      return '描述至少20字';
                    }
                  },
                  onSaved: (String content){
                    _content = content;
//                    print(content);
                  },
                ),
                Container(
                  child: RaisedButton(
                    onPressed: _forSubmitted,
                    child: Text("发布"),
                    color: Colors.yellow,
                  ),
                )

              ],
            )
        )
      ),
    );
  }

}