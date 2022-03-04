import 'package:code_test_part_time/app/presentation/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/custom_circular_button.dart';
import '../../widget/utils/custom_circular_buttton_text_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((val) {
      // Navigation Here
      Get.offNamed(Pages.kLogin);
    });
    return  Scaffold(

      body: Center(
       child :  CustomCircularButton(
            widget: const CustomCircularButtonTextView(),
            onPresss: () => print("hello world")),
      ),
    );
  }
}
