import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OtpScreenController extends GetxController{
  RxString firstOTP=RxString("");
  RxString secondOTP=RxString("");
  RxString fourthOTP=RxString("");
  RxString fifthOTP=RxString("");
  RxString thirdOTP=RxString("");
  RxString sixthOTP=RxString("");

  RxBool isOTPValid=RxBool(true);
  RxString otp=RxString("");

  late FocusNode firstOTPFocus,
      secondOTPFocus,
      thirdOTPFocus,
      fourthOTPFocus,
      fifthOTPFocus,
      sixthOTPFocus;

  OtpScreenController(){
    firstOTPFocus = FocusNode();
    secondOTPFocus = FocusNode();
    thirdOTPFocus = FocusNode();
    fourthOTPFocus = FocusNode();
    fifthOTPFocus = FocusNode();
    sixthOTPFocus = FocusNode();
  }


  void onChangeFirstOTP(String value) {
    firstOTP.value=value;
  }

  void onChangeSecondOTP(String value) {
    secondOTP.value=value;
  }

  void onChangeThirdOTP(String value) {
    thirdOTP.value=value;
  }

  void onChangeFourthOTP(String value) {
    fourthOTP.value=value;
  }

  void onChangeFifthOTP(String value) {
    fifthOTP.value=value;
  }
  void onChangeSixthOTP(String value) {
    sixthOTP.value=value;
  }

  bool checkOTP(){
    print("inide check otp");
    print("firstOTP==>${firstOTP}");
    if(firstOTP.isEmpty || secondOTP.isEmpty || thirdOTP.isEmpty || fourthOTP.isEmpty || fifthOTP.isEmpty || sixthOTP.isEmpty){
      isOTPValid.value=false;
      return false;
    }else{
      isOTPValid.value=true;
      otp.value=firstOTP.value+secondOTP.value+thirdOTP.value+fourthOTP.value+fifthOTP.value+sixthOTP.value;
      return true;
    }
  }
}