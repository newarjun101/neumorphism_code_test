import 'dart:collection';

import 'package:code_test_part_time/app/presentation/routes/pages.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/login_screen/login_screen.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/otp_screen/opt_screen.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/otp_success/otp_success_screen.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/sign_up_screen/sign_up_screen.dart';
import 'package:code_test_part_time/app/presentation/screen/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class Routers {

  var routerPage= [
    GetPage(
      name: Pages.kINITIAL,
      page:()=> const SplashScreen(),
    ),

    GetPage(
        name: Pages.kLogin,
        page:()=> const LoginScreen(),
      ),
    GetPage(
      name: Pages.kSignUp,
      page:()=> const SignUpScreen(),
    ),
    GetPage(name: Pages.kOTPPage, page: ()=> const OtpScreen()),
    GetPage(name: Pages.kOtpSuccess, page: ()=> const OtpSuccessScreen())

  ];
}