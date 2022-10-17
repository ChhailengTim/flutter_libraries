import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'package:flutter_libraries/widgetoftheweek/view_model/view_model.dart';

class FutureBuilderScreen extends StatelessWidget {
  const FutureBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.put(ViewModel());
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().futurebuilder),
      ),
      body: FutureBuilder( 
        future: viewModel.getModelData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Stack(
              children: const [
                Center(
                  child: CircularProgressIndicator.adaptive(),
                ),
                Center(
                  child: Icon(
                    Icons.electric_bolt,
                  ),
                ),
              ],
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.builder(
              itemCount: viewModel.postModelList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('${viewModel.postModelList[index].title}'),
                );
              },
            );
          } else {
            snapshot.hasError.toString();
          }
          return const SizedBox();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.electric_bolt,
        ),
      ),
    );
  }
}
