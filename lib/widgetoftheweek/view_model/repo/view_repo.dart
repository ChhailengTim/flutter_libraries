import 'package:dio/dio.dart';
import 'package:flutter_libraries/widgetoftheweek/model/model.dart';

class ViewRepository {
  Future getPostData() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == 200) {
      final responseData = response.data;
      return postList(responseData);
    }
  }
}
