import 'package:flutter/material.dart';
import 'constant_colors.dart';

class NeuConcaveDesign extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Widget child;
  final Color secondaryColor;
  const NeuConcaveDesign({Key? key, required this.width, required this.height,required this.radius,required this.child,required this.secondaryColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: getConcaveDecoration(radius,context,secondaryColor),
      child: child,
    );
  }
}
