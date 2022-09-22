import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class AccumulatorScreen extends StatefulWidget {
  const AccumulatorScreen({Key? key}) : super(key: key);

  @override
  State<AccumulatorScreen> createState() => _AccumulatorScreenState();
}

class _AccumulatorScreenState extends State<AccumulatorScreen> {
  @override
  Widget build(BuildContext context) {
    Accumulator accumulator = Accumulator();
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().accumulator),
      ),
      body: Center(
        child: Text('${accumulator.value}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            accumulator.increment(2);
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

// class Accumulator {
//   int get value => _value;
//   int _value;
//   Accumulator([this._value = 0]);

//   void increment(int addend) {
//     assert(addend >= 0);
//     _value += addend;
//   }
// }

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
