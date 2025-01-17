import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class TBBElevatedButtonTheme {
  TBBElevatedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightElevatedButtonTheme  = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TBBColors.light,
      backgroundColor: TBBColors.primary,
      disabledForegroundColor: TBBColors.darkGrey,
      disabledBackgroundColor: TBBColors.buttonDisabled,
      side: const BorderSide(color: TBBColors.primary),
      padding: const EdgeInsets.symmetric(vertical: TBBSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: TBBColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TBBSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: TBBColors.light,
      backgroundColor: TBBColors.primary,
      disabledForegroundColor: TBBColors.darkGrey,
      disabledBackgroundColor: TBBColors.darkerGrey,
      side: const BorderSide(color: TBBColors.primary),
      padding: const EdgeInsets.symmetric(vertical: TBBSizes.buttonHeight),
      textStyle: const TextStyle(fontSize: 16, color: TBBColors.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TBBSizes.buttonRadius)),
    ),
  );
}
