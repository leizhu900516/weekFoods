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
  get(params) async{
    //params = {"param1":"1"}
     try {
       response = await dio.get(url,queryParameters: params);
       print(response);
       return response.data.toString();
     } catch(e) {
       print(e);
       return null;
     }
  }

  post(params) async {
    //params = {"param1":"1"}
    try{
      response = await dio.post(url,data: params);
      return response.data.toString();
    }catch(e){
      print(e);
      return null;
    }


  }
}


//test
void main() async {
  try {
    Response response = await Dio().get("http://127.0.0.1:12345/test");
    print(response.data.toString());
  } catch (e) {
    print(e);
  }
}

