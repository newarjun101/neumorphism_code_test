import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/default_value.dart';

class BuildOtpSuccessScreenBody extends StatelessWidget {
  const BuildOtpSuccessScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.h,
      height: 200.h,
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          shape: BoxShape.circle,
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.red,
              spreadRadius: 4,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.white,
              spreadRadius: -24,
              offset: Offset(-4, -4),
              blurRadius: 10,
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done,
            size: 55.sp,
          ),
          Text(
            "Otp Success",
            style: TextStyle(
              inherit: true,
              fontSize: kExlargeFontSize20.sp,
              //  color: Colors.pink,
              shadows: const [
                Shadow(
                  // bottomLeft
                  offset: Offset(-1.5, -1.5),
                  color: Colors.pink,
                ),
                Shadow(
                  // bottomRight
                  offset: Offset(1.5, -1.5),
                  color: Colors.pink,
                ),
                Shadow(
                  // topRight
                  offset: Offset(1.5, 1.5),
                  color: Colors.pink,
                ),
                Shadow(
                  // topLeft
                  offset: Offset(-1.5, 1.5),
                  color: Colors.pink,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}