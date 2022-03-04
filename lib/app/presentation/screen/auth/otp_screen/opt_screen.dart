import 'package:code_test_part_time/app/controller/otp_screen_controller.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/otp_screen/widget/build_otp_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    OtpScreenController otpScreenController=Get.put(OtpScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        child: BuildOTPScreenBody(controller: otpScreenController,),
      ),
    );
  }
}
