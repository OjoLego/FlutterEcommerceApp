import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:flutter_ecommerce_app/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();  //so that this class is not used again and again, underscore is used

  //we have to now create static functions because constructor is private
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    chipTheme: TChipTheme.lightChipTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckBoxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      chipTheme: TChipTheme.darkChipTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      checkboxTheme: TCheckboxTheme.darkCheckBoxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );

}