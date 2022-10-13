import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class ActionScreen extends StatelessWidget {
  const ActionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      appBar: AppBar(
        title: Text(appText.actions),
      ),
    );
  }
}

class Model {
  ValueNotifier<bool> isDirty = ValueNotifier<bool>(false);
  ValueNotifier<int> data = ValueNotifier<int>(0);

  int save() {
    if (isDirty.value) {
      debugPrint('Saved Data: ${data.value}');
    }
    return data.value;
  }

  void setValue(int newValue) {
    isDirty.value = data.value != newValue;
    data.value = newValue;
  }
}

class ModifyIntent extends Intent {
  const ModifyIntent(this.value);
  final int value;
}

class ModifyAction extends Action<ModifyIntent> {
  ModifyAction(this.model);
  final Model model;
  @override
  void invoke(covariant ModifyIntent intent) {
    model.setValue(intent.value);
  }
}

class SaveIntent extends Intent {
  const SaveIntent();
}

class SaveAction extends Action<SaveIntent> {
  SaveAction(this.model);
  final Model model;

  @override
  int invoke(covariant SaveIntent intent) => model.save();
}

class SaveButton extends StatefulWidget {
  const SaveButton(ValueNotifier<bool> isDirty,
      {Key? key, required this.valueNotifier})
      : super(key: key);
  final ValueNotifier<bool> valueNotifier;

  @override
  State<SaveButton> createState() => _SaveButtonState();
}

class _SaveButtonState extends State<SaveButton> {
  int saveValue = 0;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.valueNotifier,
      builder: (BuildContext context, Widget? child) {
        return TextButton.icon(
          icon: const Icon(Icons.save),
          label: Text('$saveValue'),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
              widget.valueNotifier.value ? Colors.red : Colors.green,
            ),
          ),
          onPressed: () {
            setState(() {
              saveValue = Actions.invoke(context, const SaveIntent())! as int;
            });
          },
        );
      },
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  Model model = Model();
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Actions(
      actions: <Type, Action<Intent>>{
        ModifyIntent: ModifyAction(model),
        SaveIntent: SaveAction(model),
      },
      child: Builder(
        builder: (BuildContext context) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.exposure_plus_1),
                    onPressed: () {
                      Actions.invoke(context, ModifyIntent(++count));
                    },
                  ),
                  AnimatedBuilder(
                      animation: model.data,
                      builder: (BuildContext context, Widget? child) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('${model.data.value}',
                              style: Theme.of(context).textTheme.headline4),
                        );
                      }),
                  IconButton(
                    icon: const Icon(Icons.exposure_minus_1),
                    onPressed: () {
                      Actions.invoke(context, ModifyIntent(--count));
                    },
                  ),
                ],
              ),
              //  SaveButton(model.isDirty, valueNotifier:,),
              const Spacer(),
            ],
          );
        },
      ),
    );
  }
}
