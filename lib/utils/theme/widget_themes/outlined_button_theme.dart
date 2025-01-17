import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class TBBOutlinedButtonTheme {
  TBBOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: TBBColors.dark,
      side: const BorderSide(color: TBBColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: TBBColors.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: TBBSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TBBSizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: TBBColors.light,
      side: const BorderSide(color: TBBColors.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: TBBColors.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: TBBSizes.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TBBSizes.buttonRadius)),
    ),
  );
}
