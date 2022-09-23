import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AboutDialogScreen extends StatelessWidget {
  const AboutDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      appBar: AppBar(
        title: Text(appText.aboutdialog),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationVersion: '2.0.1',
              applicationName: 'AboutDiaLog',
              applicationLegalese: 'Hello World',
            );
          },
          child: Text(appText.aboutdialog),
        ),
      ),
    );
  }
}
