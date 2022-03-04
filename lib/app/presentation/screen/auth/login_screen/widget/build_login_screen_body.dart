import 'package:code_test_part_time/app/controller/login_page_controller.dart';
import 'package:code_test_part_time/app/presentation/screen/auth/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';

import '../../../../../core/constants/default_value.dart';
import '../../../../routes/pages.dart';
import '../../../../widget/custom_button_with_gradient.dart';
import '../../../../widget/custom_circular_button.dart';
import '../../../../widget/custom_text_form_field.dart';
import '../../../../widget/text_field_error_view.dart';
import '../../../../widget/utils/custom_circular_buttton_text_view.dart';
import 'package:code_test_part_time/app/utils/string_extension.dart';

class BuildLoginScreenBody extends StatelessWidget {
  const BuildLoginScreenBody({Key? key, this.controller}) : super(key: key);

  final LoginPageController? controller;

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Obx(()=>SizedBox(
      width: double.infinity,
  //    height: double.infinity,
      child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 0.1.sh,
          ),
          CustomCircularButton(
              widget: CustomCircularButtonTextView(),
              onPresss: () => print("hello world")),
          SizedBox(
            height: 20.h,
          ),
          CustomTextFormField(
            icon: Icons.visibility_off,
            isPassword: false,
            hint: 'user name',
            controller: userNameController,
          ),
           TextFieldErrorView(
             errorText: "Please enter a valid email!",
             isVisible:!controller!.isEmailValid.value,
           ),
          SizedBox(
            height: kDefaultMargin.sh,
          ),
          CustomTextFormField(
            icon: Icons.visibility_off,
            isPassword: true,
            hint: 'password',
            controller: passwordController,
          ),
          TextFieldErrorView(
            errorText: "Please enter at least 6 character!",
            isVisible:!controller!.isPasswordValid.value,
          ),
          SizedBox(
            height: kDefaultMargin.sh,
          ),
          SizedBox(
              width: 0.4.sw,
              child: CustomButtonWithGradient(
                  title: "Login",
                  colors: const [Color(0xff8e2de2), Color(0xff4A00E0)],
                  onPress: (){
                    print("userNameController==>${userNameController.text}");
                    controller!.checkPasswordValid(passwordController.text);
                    controller!.checkEmailValid(userNameController.text);
                    if(controller!.isEmailValid.value==false && controller!.isPasswordValid.value==false){
                      print("false");
                    }else{

                     Get.toNamed(Pages.kOTPPage,arguments: userNameController.text);
                    }
                  },),),
          SizedBox(
            height: 40.h,
          ),
        ],
      ),
    ));
  }
}
