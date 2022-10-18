import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class BackDropFilterScreen extends StatelessWidget {
  const BackDropFilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool tap = false.obs;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(AppText().backdropfilter),
        ),
        body: tap.value
            ? Image.network(
                'https://m.media-amazon.com/images/M/MV5BMzgwODk3ODA1NF5BMl5BanBnXkFtZTcwNjU3NjQ0Nw@@._V1_.jpg')
            : Stack(
                children: [
                  Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMzgwODk3ODA1NF5BMl5BanBnXkFtZTcwNjU3NjQ0Nw@@._V1_.jpg'),
                  Positioned.fill(
                    child: Center(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 10.0,
                          sigmaY: 10.0,
                        ),
                        child: Container(
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            tap.value = !tap.value;
          },
          child: const Icon(Icons.electric_bolt),
        ),
      ),
    );
  }
}
