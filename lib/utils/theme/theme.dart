import 'package:flutter/material.dart';
import 'package:the_bear_board/utils/theme/widget_themes/appbar_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/chip_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/text_field_theme.dart';
import 'package:the_bear_board/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class TBBAppTheme {
  TBBAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TBBColors.grey,
    brightness: Brightness.light,
    primaryColor: TBBColors.primary,
    textTheme: TBBTextTheme.lightTextTheme,
    chipTheme: TBBChipTheme.lightChipTheme,
    scaffoldBackgroundColor: TBBColors.white,
    appBarTheme: TBBAppBarTheme.lightAppBarTheme,
    checkboxTheme: TBBCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBBBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TBBElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TBBOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TBBTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: TBBColors.grey,
    brightness: Brightness.dark,
    primaryColor: TBBColors.primary,
    textTheme: TBBTextTheme.darkTextTheme,
    chipTheme: TBBChipTheme.darkChipTheme,
    scaffoldBackgroundColor: TBBColors.black,
    appBarTheme: TBBAppBarTheme.darkAppBarTheme,
    checkboxTheme: TBBCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBBBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TBBElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: TBBOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TBBTextFormFieldTheme.darkInputDecorationTheme,
  );
}
