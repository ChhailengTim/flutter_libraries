import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/widgetoftheweek/view_model/view_model.dart';

class StreamBuilderScreen extends StatelessWidget {
  const StreamBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(ViewModel());
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().streamBuilder),
      ),
      body: StreamBuilder(
        stream: viewModel.generateNumbers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Stack(
              children: const [
                Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                Center(
                  child: Icon(Icons.tag_faces_sharp),
                ),
              ],
            );
          } else if (snapshot.connectionState == ConnectionState.active ||
              snapshot.connectionState == ConnectionState.done) {}
          if (snapshot.hasError) {
            return const Text('Error');
          } else if (snapshot.hasData) {
            return Center(
              child: Text(snapshot.data.toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 50)),
            );
          }
          return Text('State: ${snapshot.connectionState}');
        },
      ),
    );
  }
}
