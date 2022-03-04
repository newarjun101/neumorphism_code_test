import 'package:code_test_part_time/app/controller/otp_screen_controller.dart';
import 'package:code_test_part_time/app/core/constants/default_value.dart';
import 'package:code_test_part_time/app/presentation/routes/pages.dart';
import 'package:code_test_part_time/app/presentation/widget/custom_text_field_for_otp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../widget/custom_button_with_gradient.dart';
import '../../../../widget/custom_circular_button.dart';
import '../../../../widget/text_field_error_view.dart';
import '../../../../widget/utils/custom_circular_buttton_text_view.dart';

class BuildOTPScreenBody extends StatelessWidget {
  const BuildOTPScreenBody({Key? key, required this.controller})
      : super(key: key);

  final OtpScreenController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          height: 0.9.sh,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              CustomCircularButton(
                  widget: CustomCircularButtonTextView(),
                  onPresss: () => print("hello world")),
          //    SizedBox(height: 20.h,),
              Padding(
                padding:  EdgeInsets.only(left: kDefaultMargin.sh*2,right:kDefaultMargin.sh*2,top: kDefaultMargin.sh,bottom: kDefaultMargin.sh ),
                child: Text("Please Ener the 6 Digit of Otp code that we send on your phone number",textAlign: TextAlign.center,style: TextStyle(fontSize: kSmallFontSize12.sp,),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomTextFieldForOTP(
                    focus: controller.firstOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeFirstOTP(value);
                      if (value.isNotEmpty) {
                        controller.firstOTPFocus.unfocus();
                        controller.secondOTPFocus.requestFocus();
                      }
                    },
                    // focus: ,
                  ),
                  SizedBox(
                    width: kDefaultMargin.sw,
                  ),
                  CustomTextFieldForOTP(
                    focus: controller.secondOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeSecondOTP(value);
                      if (value.isNotEmpty) {
                        controller.secondOTPFocus.unfocus();
                        controller.thirdOTPFocus.requestFocus();
                      }
                      if (value.isEmpty) {
                        controller.secondOTPFocus.unfocus();
                        controller.firstOTPFocus.requestFocus();
                      }
                    },
                    // focus: ,
                  ),
                  SizedBox(
                    width: kDefaultMargin.sw,
                  ),
                  CustomTextFieldForOTP(
                    focus: controller.thirdOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeThirdOTP(value);
                      if (value.isNotEmpty) {
                        controller.thirdOTPFocus.unfocus();
                        controller.fourthOTPFocus.requestFocus();
                      }
                      if (value.isEmpty) {
                        controller.thirdOTPFocus.unfocus();
                        controller.secondOTPFocus.requestFocus();
                      }
                    },
                    // focus: ,
                  ),
                  SizedBox(
                    width: kDefaultMargin.sw,
                  ),
                  CustomTextFieldForOTP(
                    focus: controller.fourthOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeFourthOTP(value);
                      if (value.isNotEmpty) {
                        controller.fourthOTPFocus.unfocus();
                        controller.fifthOTPFocus.requestFocus();
                      }
                      if (value.isEmpty) {
                        controller.fourthOTPFocus.unfocus();
                        controller.thirdOTPFocus.requestFocus();
                      }
                    },
                    // focus: ,
                  ),
                  SizedBox(
                    width: kDefaultMargin.sw,
                  ),
                  CustomTextFieldForOTP(
                    focus: controller.fifthOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeFifthOTP(value);
                      if (value.isNotEmpty) {
                        controller.fifthOTPFocus.unfocus();
                        controller.sixthOTPFocus.requestFocus();
                      }
                      if (value.isEmpty) {
                        controller.fifthOTPFocus.unfocus();
                        controller.fourthOTPFocus.requestFocus();
                      }
                    },
                    // focus: ,
                  ),
                  SizedBox(
                    width: kDefaultMargin.sw,
                  ),
                  CustomTextFieldForOTP(
                    focus: controller.sixthOTPFocus,
                    icon: Icons.visibility_off,
                    isPassword: false,
                    onChange: (value) {
                      controller.onChangeSixthOTP(value);
                      if (value.isEmpty) {
                        controller.sixthOTPFocus.unfocus();
                        controller.fifthOTPFocus.requestFocus();
                      }
                      if (value.isNotEmpty) {
                        ;
                        controller.sixthOTPFocus.unfocus();
                      }
                    },
                    // focus: ,
                  ),
                ],
              ),
              TextFieldErrorView(
                errorText: "Please enter a valid otp!",
                isVisible: !controller.isOTPValid.value,
              ),

              Padding(
                padding:  EdgeInsets.only(left: kDefaultMargin.sh*2,right:kDefaultMargin.sh*2,top: kDefaultMargin.sh,bottom: kDefaultMargin.sh ),
                child: Text("Please Wait while we automatically verify OTP, OR Enter by Your Self",textAlign: TextAlign.center,style: TextStyle(fontSize: kSmallFontSize12.sp,),),
              ),
              RichText(
                text: TextSpan(
                    children: [

                      TextSpan(text: "Don't Recieve Code? ",style: TextStyle(fontSize: kMediumFontSize14.sp)),
                      TextSpan(text: "Resend ",style: TextStyle(fontSize: kMediumFontSize14.sp,
                          fontWeight: FontWeight.bold,color: Colors.red),
                          recognizer: TapGestureRecognizer()..onTap =() => print("resend code")
                      )
                    ]
                ),
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              SizedBox(
                width: 0.4.sw,
                child: CustomButtonWithGradient(
                  title: "Login",
                  colors: const [Color(0xff8e2de2), Color(0xff4A00E0)],
                  onPress: () {
                    if (controller.checkOTP()) {
                      print("value==>${controller.otp.value}");
                      Get.toNamed(Pages.kOtpSuccess);
                    }
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
