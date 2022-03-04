import 'package:code_test_part_time/app/presentation/screen/auth/otp_success/widget/build_otp_success_screen_body.dart';
import 'package:flutter/material.dart';

class OtpSuccessScreen extends StatelessWidget {
  const OtpSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            BuildOtpSuccessScreenBody(),
          ],
        ),
      ),
    );
  }
}