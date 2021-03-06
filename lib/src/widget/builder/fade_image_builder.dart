///
/// [Author] Alex (https://github.com/Alex525)
/// [Date] 2020/4/1 13:07
///
import 'package:flutter/material.dart';

class FadeImageBuilder extends StatelessWidget {
  const FadeImageBuilder({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: 1),
      duration: const Duration(milliseconds: 300),
      builder: (_, double value, __) => Opacity(opacity: value, child: child),
    );
  }
}
