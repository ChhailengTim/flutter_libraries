import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AlignmentDirectionalScreen extends StatefulWidget {
  const AlignmentDirectionalScreen({Key? key}) : super(key: key);

  @override
  State<AlignmentDirectionalScreen> createState() =>
      _AlignmentDirectionalScreenState();
}

AlignmentGeometry? align;

class _AlignmentDirectionalScreenState
    extends State<AlignmentDirectionalScreen> {
  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());

    List<Map<String, AlignmentGeometry>> listAlignmentDirectional = [
      {
        'AlignmentDirectional': AlignmentDirectional.topStart,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.topCenter,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.topEnd,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.centerStart,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.center,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.centerEnd,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.bottomStart,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.bottomCenter,
      },
      {
        'AlignmentDirectional': AlignmentDirectional.bottomEnd,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(appText.alignmentdirectional),
      ),
      body: Center(
        child: Stack(
          alignment: align ?? AlignmentDirectional.center,
          children: [
            Container(
              width: 300,
              height: 300,
              color: Colors.redAccent,
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.amberAccent,
            ),
            Container(
              width: 230,
              height: 230,
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: listAlignmentDirectional
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text('${e.values.first}'),
                        onPressed: () {
                          setState(() {
                            align = e.values.first;
                          });
                        },
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
