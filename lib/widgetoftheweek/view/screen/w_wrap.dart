import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class WrapScreen extends StatelessWidget {
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int? select;
    RxInt tap = select == null ? 100.obs : select.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().wrap),
      ),
      body: Obx(
        () => Wrap(
          alignment: WrapAlignment.end,
          runSpacing: 20.0,
          spacing: 35.0,
          children: List.generate(
            50,
            (index) => InkWell(
              onTap: () {
                tap(index);
              },
              child: Container(
                width: 50,
                height: 50,
                color: tap.value == index ? Colors.amber : Colors.pink,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
