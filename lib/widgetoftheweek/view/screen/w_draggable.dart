import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class DraggableScreen extends StatelessWidget {
  const DraggableScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxInt accept = 0.obs;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().draggable),
      ),
      body: Column(
        children: [
          Draggable(
            data: 10,
            feedback: Container(
              color: Colors.red,
              width: 100,
              height: 100,
              child: const Icon(Icons.directions),
            ),
            childWhenDragging: Container(),
            child: Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
          ),
          DragTarget(
            builder: (context, List<dynamic> candidateData,
                List<dynamic> rejectedData) {
              return Container(
                color: Colors.pink,
                width: 100,
                height: 100,
                child: Center(child: Text('$accept')),
              );
            },
            onAccept: (data) {
              accept = accept + 20;
            },
          ),
        ],
      ),
    );
  }
}
