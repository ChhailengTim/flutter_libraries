import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool seletect = true.obs;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(AppText().floatingActionButton),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.pink,
          child: Container(
            height: 50,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            seletect.value = !seletect.value;
          },
          child: const Icon(Icons.electric_bolt),
        ),
        floatingActionButtonLocation: seletect.value
            ? FloatingActionButtonLocation.endDocked
            : FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
