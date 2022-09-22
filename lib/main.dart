import 'package:flutter/material.dart';
import 'package:flutter_libraries/navigations/get_route.dart';
import 'package:flutter_libraries/view/view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: GetRoutes().routes,
      home: const ViewScreen(),
    );
  }
}
