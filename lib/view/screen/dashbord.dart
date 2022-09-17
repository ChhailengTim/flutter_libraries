import 'package:flutter/material.dart';
import 'package:flutter_libraries/classA/main_a.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/view/widgets/classes_card.dart';

class DashbordScreen extends StatelessWidget {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
              ClassesCard(
                title: appText.alignment,
                onTap: () {
                  Get.to(() => const AlignmentsScreen());
                },
              ),
              ClassesCard(
                title: appText.alignmentdirectional,
                onTap: () {
                  Get.to(() => const AlignmentDirectionalScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}