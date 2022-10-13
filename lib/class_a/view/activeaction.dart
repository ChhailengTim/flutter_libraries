import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AtivatactionScreen extends StatelessWidget {
  const AtivatactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().activateAction),
      ),
    );
  }
}
