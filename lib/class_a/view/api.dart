import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class Apitest {
  Dio dio = Dio(BaseOptions(
    baseUrl: URLs.header,
  ));

  Future getHttp() async {
    try {
      var response = await dio.get('');
      debugPrint(response.data.toString());
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

mixin URLs {
  static String url = 'https://rest.coinapi.io/v1/assets?';
  static String header = '${url}apikey=YourAPIKEY';
}
