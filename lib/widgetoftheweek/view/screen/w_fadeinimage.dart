import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class FadeinImageScreen extends StatelessWidget {
  const FadeinImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().fadeInImage),
      ),
      body: FadeInImage.assetNetwork(
          fadeInCurve: Curves.bounceIn,
          fadeInDuration: const Duration(seconds: 5),
          placeholder:
              'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_3x2.jpg',
          image:
              'https://www.humanesociety.org/sites/default/files/styles/1240x698/public/2020-07/kitten-510651.jpg?h=f54c7448&itok=ZhplzyJ9'),
    );
  }
}
