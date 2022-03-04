import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/default_value.dart';
class CustomCircularButtonTextView extends StatelessWidget {
  const CustomCircularButtonTextView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Text("Talentic",
        style:  TextStyle(
          inherit: true,
          fontSize: kExlargeFontSize20.sp,
          //  color: Colors.pink,
          shadows: const [
            Shadow( // bottomLeft
              offset: Offset(-1.5, -1.5),
              color: Colors.pink,
            ),
            Shadow( // bottomRight
              offset: Offset(1.5, -1.5),
              color: Colors.pink,
            ),
            Shadow( // topRight
              offset: Offset(1.5, 1.5),
              color: Colors.pink,
            ),
            Shadow( // topLeft
              offset: Offset(-1.5, 1.5),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}