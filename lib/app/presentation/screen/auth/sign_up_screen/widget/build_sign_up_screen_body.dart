import 'package:code_test_part_time/app/controller/sign_up_page_controller.dart';
import 'package:code_test_part_time/app/presentation/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../core/constants/default_value.dart';
import '../../../../widget/custom_button_with_gradient.dart';
import '../../../../widget/custom_circular_button.dart';
import '../../../../widget/custom_text_form_field.dart';
import '../../../../widget/simple_circular_button.dart';
import '../../../../widget/text_field_error_view.dart';
import '../../../../widget/utils/custom_circular_buttton_text_view.dart';

class BuildSignUpScreenBody extends StatelessWidget {
  const BuildSignUpScreenBody({Key? key, required this.controller})
      : super(key: key);

  final SignUpPageController controller;

  @override
  Widget build(BuildContext context) {
    TextEditingController fullNameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();
    return Obx(() => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //  crossAxisAlignment: CrossAxisAlignment.center,
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
                hint: 'Full Name',
                controller: fullNameController,
              ),
              TextFieldErrorView(
                errorText: "Please enter Name!",
                isVisible: !controller.isUserNameValid.value,
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              CustomTextFormField(
                icon: Icons.visibility_off,
                isPassword: false,
                hint: 'Email Id',
                controller: emailController,
              ),
              TextFieldErrorView(
                errorText: "Please enter a valid email!",
                isVisible: !controller.isEmailValid.value,
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomTextFormField(
                icon: Icons.visibility_off,
                isPassword: true,
                hint: 'Password',
                controller: passwordController,
              ),
              TextFieldErrorView(
                errorText: "Please enter at least 6 character!",
                isVisible: !controller.isPasswordValid.value,
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              CustomTextFormField(
                icon: Icons.visibility_off,
                isPassword: false,
                hint: 'Mobile Number',
                controller: mobileNumberController,
                isPhoneNumberkeyboard: true,
              ),
              TextFieldErrorView(
                errorText: "Please enter a valid mobile number!",
                isVisible: !controller.isMobileNumberValid.value,
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              SizedBox(
                  width: 0.4.sw,
                  child: CustomButtonWithGradient(
                      title: "Sign Up",
                      colors: const [Color(0xff56CCF2), Color(0xff2948ff)],
                      onPress: () {
                       if( controller.checkValidation(emailController.text,passwordController.text,mobileNumberController.text,fullNameController.text)){
                         Get.toNamed(Pages.kOTPPage);
                       }
                      })),
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Or",
                style: TextStyle(
                  fontSize: kLargeFontSize16.sp,
                ),
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              Text(
                "Sign Up Using...",
                style: TextStyle(
                  fontSize: kLargeFontSize16.sp,
                ),
                //   recognizer: TapGestureRecognizer()..onTap =() => Get.toNamed(Pages.kSignUp
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SimpleCircularButton(
                      child: Image.asset(
                        "assets/images/google.png",
                        fit: BoxFit.contain,
                      ),
                      height: 50,
                      width: 50,
                      radius: 100,
                      onPress: () => print("hahah")),
                  SizedBox(
                    width: kSmallMargin.sh,
                  ),
                  SimpleCircularButton(
                      child: Image.asset(
                        "assets/images/facebook.png",
                        fit: BoxFit.contain,
                      ),
                      height: 50,
                      width: 50,
                      radius: 100,
                      onPress: () => print("hahah")),
                  SizedBox(
                    width: kSmallMargin.sh,
                  ),
                  SimpleCircularButton(
                      child: Image.asset(
                        "assets/images/twitter.png",
                        fit: BoxFit.contain,
                      ),
                      height: 50,
                      width: 50,
                      radius: 100,
                      onPress: () => print("hahah")),
                  SizedBox(
                    width: kSmallMargin.sh,
                  ),
                  SimpleCircularButton(
                      child: Image.asset(
                        "assets/images/ig.png",
                        fit: BoxFit.contain,
                      ),
                      height: 50,
                      width: 50,
                      radius: 100,
                      onPress: () => print("hahah")),
                ],
              ),
              SizedBox(
                height: kDefaultMargin.sh,
              ),
            ],
          ),
        ));
  }
}
