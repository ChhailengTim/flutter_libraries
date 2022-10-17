import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class TableScreen extends StatelessWidget {
  const TableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().table),
      ),
      body: Column(
        children: [
          Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.pink,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.purple,
                  ),
                ],
              ),
              TableRow(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
