import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../../core/constants/default_value.dart';
class TextFieldErrorView extends StatelessWidget {
  const TextFieldErrorView({
    Key? key, this.isVisible, this.errorText,


  }) : super(key: key);

  final bool? isVisible;
  final String? errorText;


  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:isVisible!,
      child: SizedBox(
        width: 0.8.sw,
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: kDefaultMargin.sh,
            ),
            Text(
              errorText??"",
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
