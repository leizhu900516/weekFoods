/*
* api工具类；封装了get和post的方法
* */
import 'package:dio/dio.dart';


class apiHandle{

// apiHandle(){
//
// };
  Response response;
  Dio dio = new Dio();
  var url = "http://127.0.0.1:12345/test";
  get() async{
     try {
       response = await dio.get(url);
       print(response);
       return response.data.toString();
     } catch(e) {
       print(e);
       return null;
     }
  }

  post() async {
    try{
      response = await dio.post(url,data: {"param1":"1"});
      return response.data.toString();
    }catch(e){
      print(e);
      return null;
    }


  }
}



void main() async {
  try {
    Response response = await Dio().get("http://127.0.0.1:12345/test");
    print(response.data.toString());
  } catch (e) {
    print(e);
  }
}

