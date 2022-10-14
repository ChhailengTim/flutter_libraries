import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AlignScreen extends StatelessWidget {
  const AlignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    AlignmentGeometry? alignmentGeometry;
    Rx<AlignmentGeometry> selected = alignmentGeometry == null
        ? Alignment.center.obs
        : alignmentGeometry.obs;
    List<Map<String, dynamic>> alignList = [
      {
        'label': Alignment.topLeft,
      },
      {
        'label': Alignment.topCenter,
      },
      {
        'label': Alignment.topRight,
      },
      {
        'label': Alignment.centerLeft,
      },
      {
        'label': Alignment.center,
      },
      {
        'label': Alignment.centerRight,
      },
      {
        'label': Alignment.bottomLeft,
      },
      {
        'label': Alignment.bottomCenter,
      },
      {
        'label': Alignment.bottomRight,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().align),
      ),
      body: Obx(
        () => Column(
          children: [
            Center(
              child: Container(
                height: Get.width,
                width: 500,
                color: Colors.blue[50],
                child: Align(
                  alignment: selected.value,
                  child: const FlutterLogo(
                    size: 60,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: alignList
                    .asMap()
                    .entries
                    .map(
                      (e) => ActionChip(
                        label: Text('${e.value['label']}'),
                        onPressed: () {
                          selected(e.value['label']);
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
