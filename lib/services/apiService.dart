
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../model/shortlinkModel.dart';

// class network {


// Future<List<ShortLinkModels>>makeRequestWithApiKey() async {
//   final dio = Dio();

//   // final apiKey = "DtIwkYO8OQMmhaZzOPYll06o28SYGj8F7K5yZ98XKEdyoP1Z03dPeBphC6Xy";
//   // final header = {"Authorization": "Bearer $apiKey"};
  
//   final response = await dio.post("https://api.tinyurl.com/create?api_token=DtIwkYO8OQMmhaZzOPYll06o28SYGj8F7K5yZ98XKEdyoP1Z03dPeBphC6Xy",
//     // options: Options(headers: header),
//   );
//    print(response.data.toString());

//   final data = (response.data as List).map((item) => ShortLinkModels.fromJson(item)).toList();

//     return data;
// }

// }
// final apiProvider = Provider<network>((ref) {
//   return network() ;
// });


import 'package:activelamp/services/services.dart';
import 'package:dio/dio.dart';

class ApiServiceShortener{

  /// mau ning tawagon nato para mu pa gamay lin
  static Future<Response> shortenLink({dynamic data}) async{
    // ani sample sa pag post sa data
    final response = await DioMethod.methodhandler(
      type: DioType.post,
      // ayaw jud kalimte ang url jhajhaaj
      url: ApiString.baseUrl,
      data: data
    );
    // then ayaw kalimta ang return
    return response;
  }
  // mana mau rani pights na
}