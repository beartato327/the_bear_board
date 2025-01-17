import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class TBBChipTheme {
  TBBChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TBBColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: TBBColors.black),
    selectedColor: TBBColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TBBColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TBBColors.darkerGrey,
    labelStyle: TextStyle(color: TBBColors.white),
    selectedColor: TBBColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: TBBColors.white,
  );
}
