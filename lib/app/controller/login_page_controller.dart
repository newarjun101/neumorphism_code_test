import 'package:get/get.dart';
import 'package:code_test_part_time/app/utils/string_extension.dart';

class LoginPageController extends GetxController{

  RxBool isEmailValid=RxBool(true);
  RxBool isPasswordValid=RxBool(true);


  void checkEmailValid(String email){
    print("email==>${email} ${email.isValidEmail()}");
    if(email.isValidEmail()){
      isEmailValid.value=true;
    }else{
      isEmailValid.value=false;
    }
  }

  void checkPasswordValid(String password){
    if(password.isPasswordValid()){
      isPasswordValid.value=true;
    }else{
      isPasswordValid.value=false;
    }
  }
}