import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class ActionChipScreen extends StatelessWidget {
  const ActionChipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    List<Map<String, dynamic>> listActionChip = [
      {
        'label': 'search',
        'icons': const Icon(Icons.search),
      },
      {
        'label': 'home',
        'icons': const Icon(Icons.home),
      },
      {
        'label': 'menu',
        'icons': const Icon(Icons.menu),
      },
      {
        'label': 'settings',
        'icons': const Icon(Icons.settings),
      },
      {
        'label': 'expand',
        'icons': const Icon(Icons.expand),
      },
      {
        'label': 'done',
        'icons': const Icon(Icons.done),
      },
      {
        'label': 'check_circle',
        'icons': const Icon(Icons.check_circle),
      },
      {
        'label': 'favorite',
        'icons': const Icon(Icons.favorite),
      },
      {
        'label': 'add',
        'icons': const Icon(Icons.add),
      },
      {
        'label': 'delete',
        'icons': const Icon(Icons.delete),
      },
      {
        'label': 'arrow_back',
        'icons': const Icon(Icons.arrow_back),
      },
      {
        'label': 'star',
        'icons': const Icon(Icons.star),
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(appText.actionchip),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: listActionChip
                    .map(
                      (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActionChip(
                          avatar: CircleAvatar(
                            backgroundColor: Colors.grey.shade800,
                            child: e['icons'],
                          ),
                          label: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('${e['label']}'),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
