import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Apitest2 {
  Dio dio = Dio(BaseOptions(
    baseUrl: URLs.host,
    headers: {
      'Authorization':
          'Bearer YourAccessToken'
    },
  ));

  Future getHttp() async {
    try {
      var response = await dio.post('/YourRoute2');
      debugPrint(response.data.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

mixin URLs {
  static String url = 'YourBaseURLs';
  static String host = '$url/YourRoute1';
}
