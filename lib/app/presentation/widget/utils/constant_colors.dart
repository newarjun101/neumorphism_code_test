import 'package:flutter/material.dart';

import 'concave_decoration.dart';

getConcaveDecoration(double radius, BuildContext context,Color secondoryColor) {

  return ConcaveDecoration(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(radius),
    ),

    ///have to change here
    colors:  [
      Color(0xff111216),
      secondoryColor,
      // Theme.of(context).colorScheme.secondaryVariant
    ],
    depression: 5,
  );
}

getConvexShadow(BuildContext context){
 return  const[
          BoxShadow(
              color: Color(0xff111216),
              offset: Offset(3.0, 3.0),
              blurRadius: 5),
          BoxShadow(
              color:  Color(0xff111216),
              offset: Offset(-3.0, -3.0),
              blurRadius: 5),
        ];
}
