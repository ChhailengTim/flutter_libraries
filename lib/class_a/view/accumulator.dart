import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AccumulatorScreen extends StatefulWidget {
  const AccumulatorScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AccumulatorScreen createState() => _AccumulatorScreen();
}

class _AccumulatorScreen extends State<AccumulatorScreen> {
  Accumulator accumulator = Accumulator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppText().accumulator)),
      body: Center(
          child: Center(
        child: Text(
          '${accumulator.value}',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            accumulator.increment(15);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Accumulator {
  ///[Accumulator] may be initialized with a specified value, otherwise, it will
  ///initialize to zero.
  Accumulator([this._value = 0]);

  ///The integer stored in this [Accumulator].
  int get value => _value;
  int _value;

  ///Increases the [value] by the `addend`.
  void increment(int addend) {
    assert(addend >= 0);
    _value += addend;
  }
}
