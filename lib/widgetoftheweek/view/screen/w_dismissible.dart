import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class DismissibleScreen extends StatelessWidget {
  const DismissibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().dismissible),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Dismissible(
              background: Container(color: Colors.amber),
              secondaryBackground: Container(color: Colors.pink),
              key: const ValueKey('Delete'),
              child: const Card(
                child: ListTile(
                  title: Text('data'),
                ),
              ),
            );
          }),
    );
  }
}
