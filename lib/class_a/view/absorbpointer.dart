import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AbsorbPointerScreen extends StatelessWidget {
  const AbsorbPointerScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      appBar: AppBar(
        title: Text(appText.absorpointer),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 200,
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: null,
              ),
            ),
            SizedBox(
              width: 100,
              height: 200,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[200],
                  ),
                  onPressed: () {},
                  child: null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
