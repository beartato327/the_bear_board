import 'package:flutter/material.dart';
import 'package:the_bear_board/utils/theme/custom_themes/text_theme.dart';

class TBBAppTheme {
  TBBAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Ubuntu",
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TBBTextTheme.lightTextTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Ubuntu",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TBBTextTheme.darkTextTheme);
}
