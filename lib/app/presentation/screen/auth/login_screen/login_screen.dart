import 'package:code_test_part_time/app/controller/login_page_controller.dart';
import 'package:code_test_part_time/app/core/constants/default_value.dart';
import 'package:code_test_part_time/app/presentation/routes/pages.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/login_screen/widget/build_login_screen_body.dart';
import 'package:code_test_part_time/app/presentation/widget/custom_button_with_gradient.dart';
import 'package:code_test_part_time/app/presentation/widget/custom_circular_button.dart';
import 'package:code_test_part_time/app/presentation/widget/custom_text_form_field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    LoginPageController loginPageController=Get.put(LoginPageController());
    return  Scaffold(

      body:  SingleChildScrollView(child: BuildLoginScreenBody(
        controller: loginPageController,
      )),
      floatingActionButton: RichText(
        text: TextSpan(
          children: [

            TextSpan(text: "New User? ",style: TextStyle(fontSize: kLargeFontSize16.sp)),
           TextSpan(text: "Create Account ",style: TextStyle(fontSize: kLargeFontSize16.sp,
               fontWeight: FontWeight.bold,color: Colors.blue),
           recognizer: TapGestureRecognizer()..onTap =() => Get.toNamed(Pages.kSignUp)
           )
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
