import 'package:code_test_part_time/app/presentation/widget/utils/neu_concave_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/default_value.dart';

class CustomTextFieldForOTP extends StatelessWidget {
  const CustomTextFieldForOTP(
      {Key? key,
      required this.icon,
      required this.isPassword,
      required this.focus,
      this.isIcon,
      this.isPhoneNumberkeyboard = false,
      required this.onChange,})
      : super(key: key);

  final IconData icon;
  final bool isPassword;
  final bool? isIcon;
  final bool isPhoneNumberkeyboard;
  final Function onChange;
  final FocusNode focus;

  @override
  Widget build(BuildContext context) {
    return NeuConcaveDesign(
      width: 0.12.sw,
      height: 50.h,
      radius: 12.h,
      child: TextFormField(
        focusNode: focus,
        obscureText: isPassword ? true : false,
        inputFormatters: <TextInputFormatter>[
          LengthLimitingTextInputFormatter(1),
        ],
        onChanged:(value)=> onChange(value),
        keyboardType: TextInputType.number ,
        style: TextStyle(
          fontSize: kMediumFontSize14.sp,
          color: Theme.of(context).colorScheme.primaryContainer,
          fontWeight: FontWeight.w600,
        ),
        cursorColor: Colors.white,
        // keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(0.03.sh, 0.00.sh, 0.015.sh, 0),
          border: InputBorder.none,

          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
            borderRadius: BorderRadius.circular(4.w),
          ),
          fillColor: Colors.white,
        ),
      ),
      secondaryColor: Colors.white.withOpacity(0.2),
    );
  }
}
