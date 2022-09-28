import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class ActionListenerScreen extends StatelessWidget {
  const ActionListenerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appText = Get.put(AppText());
    return Scaffold(
      appBar: AppBar(
        title: Text(appText.actionListener),
      ),
      body: const Center(
        child: MyStatefulWidget(),
      ),
    );
  }
}

class ActionListenerExample extends StatefulWidget {
  const ActionListenerExample({super.key});

  @override
  State<ActionListenerExample> createState() => _ActionListenerExampleState();
}

class _ActionListenerExampleState extends State<ActionListenerExample> {
  bool _on = false;
  late final MyAction _myAction;

  @override
  void initState() {
    super.initState();
    _myAction = MyAction();
  }

  void _toggleState() {
    setState(() {
      _on = !_on;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlinedButton(
            onPressed: _toggleState,
            child: Text(_on ? 'Disable' : 'Enable'),
          ),
        ),
        if (_on)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ActionListener(
              listener: (Action<Intent> action) {
                if (action.intentType == MyIntent) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('Action Listener Called'),
                  ));
                }
              },
              action: _myAction,
              child: ElevatedButton(
                onPressed: () => const ActionDispatcher()
                    .invokeAction(_myAction, const MyIntent()),
                child: const Text('Call Action Listener'),
              ),
            ),
          ),
        if (!_on) Container(),
      ],
    );
  }
}

class MyAction extends Action<MyIntent> {
  @override
  void addActionListener(ActionListenerCallback listener) {
    super.addActionListener(listener);
    debugPrint('Action Listener was added');
  }

  @override
  void removeActionListener(ActionListenerCallback listener) {
    super.removeActionListener(listener);
    debugPrint('Action Listener was removed');
  }

  @override
  void invoke(covariant MyIntent intent) {
    notifyActionListeners();
  }
}

class MyIntent extends Intent {
  const MyIntent();
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const ActionListenerExample();
  }
}