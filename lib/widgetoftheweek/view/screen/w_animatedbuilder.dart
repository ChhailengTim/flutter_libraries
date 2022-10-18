import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';
import 'dart:math' as math;

class AnimatedBuilderScreen extends StatefulWidget {
  const AnimatedBuilderScreen({super.key});

  @override
  State<AnimatedBuilderScreen> createState() => _AnimatedBuilderScreenState();
}

class _AnimatedBuilderScreenState extends State<AnimatedBuilderScreen>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(AppText().animatedBuilder),
        ),
        body: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: controller.value * 2 * math.pi,
              child: child,
            );
          },
          child: Center(
            child: Tooltip(
              message: 'Statefulwidgets',
              child: Container(
                width: 200,
                height: 200,
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    'Hello Animation',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
