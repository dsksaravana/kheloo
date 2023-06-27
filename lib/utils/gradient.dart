import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    super.key,
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

BoxDecoration gradientBottomBorder() {
  return const BoxDecoration(
    border: Border(
        bottom: BorderSide(
      color: Color.fromARGB(255, 205, 157, 123),
      width: 3.0,
    )),
  );
}

BoxDecoration gradientLeftBorder() {
  return const BoxDecoration(
    border: Border(
        left: BorderSide(
      color: Color.fromARGB(255, 205, 157, 123),
      width: 5.0,
    )),
  );
}
