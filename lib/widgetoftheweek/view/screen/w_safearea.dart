import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class SafeAreaScreen extends StatelessWidget {
  const SafeAreaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().safeArea),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        left: false,
        right: false,
        child: ListView(
          children: List.generate(
            100,
            (index) => const Text(
              'This is some text',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
