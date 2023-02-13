
import 'package:dio/dio.dart' as dio;

enum DioType{post,get}

class DioMethod{

  static final  d = dio.Dio();

  static Future<dio.Response> methodhandler(
    {
      DioType ? type,
      String? url,
      dynamic data
    }
  ) async{

    if(type == DioType.post){
      // Drea mu agi ang function og post
      final response = await d.post(url!,data: data,options: dio.Options(
        headers: {
          "Accept":"application/json",
          "Content-Type":"application/json"
        }
      ));
      return response;
    }else{
     // nya drea muagi pag get na data
     // nya pag get walay data or body ihatag basta get
     // nag tan aw ka choi?
     // oikaw na erase ani maya pag humana
      final response = await d.get(url!);
      return response;
    }

  }

}