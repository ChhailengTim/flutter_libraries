import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_libraries/classA/view/viewa.dart';

class MainClassA extends StatelessWidget {
  const MainClassA({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ViewAScreen();
  }
}
