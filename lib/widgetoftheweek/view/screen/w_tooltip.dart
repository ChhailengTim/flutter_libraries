import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class TooltipScreen extends StatelessWidget {
  const TooltipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().tooltip),
      ),
      body: Column(
        children: [
          Tooltip(
            message: 'London',
            child: Image.network(
                'https://www.planetware.com/wpimages/2020/02/france-in-pictures-beautiful-places-to-photograph-eiffel-tower.jpg'),
          ),
          Container(
            color: Colors.amber,
            height: 200,
            width: 300,
          ),
          Container(
            color: Colors.red,
            height: 100,
            width: 100,
            child: const FittedBox(
              fit: BoxFit.scaleDown,
              child: Text('data'),
            ),
          ),
        ],
      ),
    );
  }
}
