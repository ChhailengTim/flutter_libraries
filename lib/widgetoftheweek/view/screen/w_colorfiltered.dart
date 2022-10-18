import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class ColorFilteredScreen extends StatelessWidget {
  const ColorFilteredScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    RxBool tap = false.obs;
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text(AppText().colorFiltered),
        ),
        body: tap.value
            ? Image.network(
                'https://preview.redd.it/cbd801fa2l781.jpg?width=640&crop=smart&auto=webp&s=56b058938f9d8a908261547a4bf3ad0a15aba5d8')
            : ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(Colors.grey, BlendMode.color),
                child: Image.network(
                    'https://preview.redd.it/cbd801fa2l781.jpg?width=640&crop=smart&auto=webp&s=56b058938f9d8a908261547a4bf3ad0a15aba5d8'),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            tap.value = !tap.value;
          },
          child: const Icon(Icons.electric_bolt_outlined),
        ),
      ),
    );
  }
}
