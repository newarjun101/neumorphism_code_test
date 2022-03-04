import 'package:flutter/material.dart';

import 'constant_colors.dart';

class NeuConvexDesign extends StatelessWidget {
  final double width;
  final double height;
  final double radius;
  final Widget child;
  const NeuConvexDesign({Key? key, required this.width, required this.height,required this.radius, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        boxShadow: getConvexShadow(context),
        borderRadius: BorderRadius.circular(radius),
        color: Theme.of(context).primaryColor
      ),
      child: child,
    );
  }
}
