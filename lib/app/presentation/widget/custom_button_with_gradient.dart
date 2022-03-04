import 'package:code_test_part_time/app/core/constants/default_value.dart';
import 'package:code_test_part_time/app/presentation/widget/utils/neu_concave_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtonWithGradient extends StatelessWidget {


  final String title;
  final List<Color> colors;
  final Function onPress;
  const CustomButtonWithGradient({Key? key, required this.title, required this.colors, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onPress();
      },
      child: Container(

        width: double.infinity,
        height: 42.h,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(50.h),
          boxShadow: [

            BoxShadow(
              color: colors[0].withOpacity(0.3),
              spreadRadius: 2,
              blurRadius:2,
              offset: const Offset(0, 0),
            )
          ],
          gradient:  LinearGradient(
              colors: colors,
            //  begin: const FractionalOffset(0.0, 0.0),
           //   end: const FractionalOffset(1.0, 0.0),
             // stops: const [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),

        child: Center(child: Text(title,textAlign: TextAlign.center,style: TextStyle(fontSize: kMediumFontSize14.sp,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
