import 'package:flutter/material.dart';
import 'package:flutter_libraries/classA/main_a.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/view/widgets/classes_card.dart';
import 'package:get/get.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ClassesCard(
              title: appText.absorpointer,
              onTap: () {
                Get.to(() => const AbsorbPointerScreen());
              },
            ),
            ClassesCard(
              title: appText.accumulator,
              onTap: () {
                Get.to(() => const AccumulatorScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
