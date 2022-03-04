import 'package:code_test_part_time/app/presentation/widget/utils/constant_colors.dart';
import 'package:code_test_part_time/app/presentation/widget/utils/neu_concave_design.dart';
import 'package:code_test_part_time/app/presentation/widget/utils/neu_convex_design.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SimpleCircularButton extends StatelessWidget {

  final Widget child;
  final double height;
  final double  width;
  final double  radius;
  final VoidCallback onPress;
  const   SimpleCircularButton({Key? key, required this.child, required this.height,
    required this.width, required this.radius, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          boxShadow: getConvexShadow(context),
          borderRadius: BorderRadius.circular(radius),
          color: Theme.of(context).scaffoldBackgroundColor
      ),
      child: Padding(
        padding:  EdgeInsets.all(14.0.h),
        child:  child,
      ),
    );
  }
}
