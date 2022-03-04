import 'package:code_test_part_time/app/presentation/widget/utils/neu_concave_design.dart';
import 'package:code_test_part_time/app/presentation/widget/utils/neu_convex_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/constants/default_value.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String hint;
  final bool isPassword;
  final bool? isIcon;
  final bool isPhoneNumberkeyboard;

  const CustomTextFormField(
      {Key? key,
      required this.controller,
      required this.icon,
      required this.hint,
      required this.isPassword,
      this.isIcon, this.isPhoneNumberkeyboard= false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeuConcaveDesign(
      width: 0.8.sw,
      height: 50.h,
      radius: 20.h,
      child: TextFormField(
        obscureText: isPassword ? true : false,
        controller: controller,

        autovalidateMode: AutovalidateMode.always,
         keyboardType: isPhoneNumberkeyboard?TextInputType.number:TextInputType.text,
        style: TextStyle(
          fontSize: kMediumFontSize14.sp,
          color: Theme.of(context).colorScheme.primaryContainer,
          fontWeight: FontWeight.w600,
        ),cursorColor: Colors.white,
        // keyboardType: TextInputType.number,
        decoration: InputDecoration(

          focusColor: Colors.white,
          contentPadding: EdgeInsets.fromLTRB(0.03.sh, 0.00.sh, 0.03.sh, 0),
          //add prefix icon
          /*  prefixIcon: Icon(
                  icon,
                  size: 20.sp,
                  color: Theme.of(context).colorScheme.primaryContainer
              ) ,*/
          border: InputBorder.none,

          focusedBorder: OutlineInputBorder(

            borderSide: const BorderSide(color: Colors.transparent, width: 1.0),
            borderRadius: BorderRadius.circular(4.w),
          ),
          fillColor: Colors.white,

          hintText: hint,
          //make hint text
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.primaryContainer,
            fontSize: kMediumFontSize14.sp,
            fontFamily: "verdana_regular",
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      secondaryColor: Colors.white.withOpacity(0.2),
    );

  }
}
