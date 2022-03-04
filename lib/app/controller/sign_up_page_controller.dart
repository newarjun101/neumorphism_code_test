import 'package:get/get.dart';
import 'package:code_test_part_time/app/utils/string_extension.dart';

class SignUpPageController extends GetxController {
  RxBool isEmailValid = RxBool(true);
  RxBool isPasswordValid = RxBool(true);
  RxBool isUserNameValid = RxBool(true);
  RxBool isMobileNumberValid = RxBool(true);

  void checkEmailValid(String email) {
    print("email==>${email} ${email.isValidEmail()}");
    if (email.isValidEmail()) {
      isEmailValid.value = true;
    } else {
      isEmailValid.value = false;
    }
  }

  void checkPasswordValid(String password) {
    if (password.isPasswordValid()) {
      isPasswordValid.value = true;
    } else {
      isPasswordValid.value = false;
    }
  }

  void checkUserNameValid(String userName) {
    if (userName.isEmpty) {
      isUserNameValid.value = false;
    } else {
      isUserNameValid.value = true;
    }
  }

  void checkPhoneNumberValid(String phoneNumber) {
    if (phoneNumber.length == 0 || !phoneNumber.isValidPhoneNumber()) {
      isMobileNumberValid.value = false;
    } else {
      isMobileNumberValid.value = true;
    }
  }

  bool checkValidation(String email,String password,String phoneNumber,String userName){
    checkPasswordValid(password);
    checkEmailValid(email);
    checkPhoneNumberValid(phoneNumber);
    checkUserNameValid(userName);

    if(isEmailValid.isTrue && isMobileNumberValid.isTrue && isUserNameValid.isTrue && isPasswordValid.isTrue){
      return true;
    }else{
      return false;
    }
  }
}
