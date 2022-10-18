import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class OpacityScreen extends StatelessWidget {
  const OpacityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxDouble opacityV = 0.0.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().opacity),
      ),
      body: Obx(
        () => Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.pink,
              ),
              Opacity(
                opacity: opacityV.value,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Tooltip(
                message: 'Hello opacity',
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ),
              AnimatedOpacity(
                duration: const Duration(milliseconds: 1000),
                opacity: opacityV.value,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  opacityV(0.5);
                },
                child: const Text("Change Opacity"),
              ),
              ElevatedButton(
                onPressed: () {
                  opacityV(1.0);
                },
                child: const Text("Change Opacity"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
