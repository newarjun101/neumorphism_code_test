import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/default_value.dart';

class StyleTheme {
  ThemeData getDarkTheme() {
    return ThemeData(
   //  brightness: Brightness.dark,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      primaryColor: primaryColor,

      shadowColor: shadowColor,
      hintColor: hintColor,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        brightness: Brightness.dark,
        secondary: secondary,
        onSecondary: onSecondary,
        primaryContainer: primaryContainer, ///card bg color
        onPrimary: onPrimary,
        ///text  color
      ),

    );
  }
}