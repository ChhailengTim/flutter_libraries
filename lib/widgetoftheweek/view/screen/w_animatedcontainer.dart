import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AnimatedContainerScreen extends StatelessWidget {
  const AnimatedContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    RxDouble width = 500.0.obs;
    RxDouble height = 500.0.obs;
    RxDouble size = 20.0.obs;
    Rx<Color> color = const Color.fromRGBO(255, 255, 255, 1).obs;
    Rx<BorderRadiusGeometry> borderRadius = BorderRadius.circular(10).obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().animatedContainer),
      ),
      body: Obx(
        () => Center(
          child: AnimatedContainer(
            width: width.value,
            height: height.value,
            duration: const Duration(
              seconds: 2,
            ),
            curve: Curves.bounceInOut,
            decoration: BoxDecoration(
              color: color.value,
              borderRadius: borderRadius.value,
            ),
            child: const Icon(
              Icons.favorite,
              size: 50,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          width(random.nextInt(500).toDouble());
          height(random.nextInt(500).toDouble());
          size(random.nextInt(50).toDouble());
          color(Color.fromRGBO(
            random.nextInt(300),
            random.nextInt(300),
            random.nextInt(300),
            1,
          ));
          borderRadius(BorderRadius.circular(random.nextInt(100).toDouble()));
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
