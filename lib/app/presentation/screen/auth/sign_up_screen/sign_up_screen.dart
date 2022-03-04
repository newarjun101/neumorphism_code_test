
import 'package:code_test_part_time/app/controller/sign_up_page_controller.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/sign_up_screen/widget/build_sign_up_screen_body.dart';
import 'package:code_test_part_time/app/presentation/widget/simple_circular_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/constants/default_value.dart';
import '../../../routes/pages.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SignUpPageController signUpPageController=Get.put(SignUpPageController());

    return  Scaffold(

      body:  SingleChildScrollView(child: BuildSignUpScreenBody(
        controller: signUpPageController,
      )),

    );
  }
}
