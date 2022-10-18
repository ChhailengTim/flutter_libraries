import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class TransformScreen extends StatelessWidget {
  const TransformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    RxDouble dx = 50.0.obs;
    RxDouble dy = 50.0.obs;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(AppText().transform),
        ),
        body: ListView(children: [
          Transform.rotate(
            angle: dx.value,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.pink,
            ),
          ),
          SizedBox(
            height: dy.value,
          ),
          Transform.rotate(
            origin: Offset(
              dx.value,
              dy.value,
            ),
            angle: dx.value,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.pink,
            ),
          ),
          Transform.scale(
            scale: 0.5,
            origin: Offset(
              dx.value,
              dy.value,
            ),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
          Transform.translate(
            offset: Offset(
              dx.value,
              dy.value,
            ),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
          Transform(
            transform: Matrix4.skewY(0.3)..rotateZ(3.14 / 12.0),
            origin: const Offset(50.0, 50.0),
            child: Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue,
            ),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            dx(random.nextInt(50).toDouble());
            dy(random.nextInt(50).toDouble());
          },
          child: const Icon(Icons.play_arrow),
        ),
      ),
    );
  }
}
