import 'package:flutter/material.dart';
import 'package:flutter_libraries/utils/config/config.dart';

class FadeTransitionScreen extends StatefulWidget {
  const FadeTransitionScreen({Key? key}) : super(key: key);

  @override
  State<FadeTransitionScreen> createState() => _FadeTransitionScreenState();
}

class _FadeTransitionScreenState extends State<FadeTransitionScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText().fadetransition),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Stack(
            children: const [
              Icon(
                Icons.favorite,
                size: 300,
                color: Colors.red,
              ),
              Icon(
                Icons.favorite_border,
                size: 300,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
