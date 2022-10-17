import 'package:flutter/material.dart';

import 'home_widgets.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String str = "Phnom Penh";

    return Scaffold(
      appBar: HomeWidgets.instance.appBarWidgets(str),
      body: ListView(
        children: [
          HomeWidgets.instance.headWidgets(),
          HomeWidgets.instance.sliderWidgets(),
          HomeWidgets.instance.wrapIcons(),
          HomeWidgets.instance.giftWidgets(),
        ],
      ),
    );
  }
}
