import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().pageview),
      ),
      body: PageView(
        controller: controller,
        scrollBehavior: const ScrollBehavior(),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text('Page 1'),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Center(
              child: Text('Page 2'),
            ),
          ),
          Container(
            color: Colors.green,
            child: const Center(
              child: Text('Page 3'),
            ),
          ),
        ],
      ),
    );
  }
}
