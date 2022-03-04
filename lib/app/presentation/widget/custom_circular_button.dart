import 'package:code_test_part_time/app/presentation/widget/utils/neu_concave_design.dart';
import 'package:code_test_part_time/app/presentation/widget/utils/neu_convex_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCircularButton extends StatelessWidget {
  final Widget widget;
  final VoidCallback onPresss;
  const CustomCircularButton(
      {Key? key, required this.widget, required this.onPresss})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   NeuConcaveDesign(
      height: 150.h,
      width: 150.h,
      radius: 150/2.h,
      secondaryColor:  Color(0xff111216),
      child: Padding(
        padding:  EdgeInsets.all(20.0.h),
        child: NeuConvexDesign(
            width: 130.h,
            height: 130.h,
            radius: 130 / 2.h,
            child:  Center(
              child: widget,
            )),
      ),
    );
  }
}

