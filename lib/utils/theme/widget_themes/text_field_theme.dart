import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class TBBTextFormFieldTheme {
  TBBTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: TBBColors.darkGrey,
    suffixIconColor: TBBColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TBBSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: TBBSizes.fontSizeMd, color: TBBColors.black),
    hintStyle: const TextStyle().copyWith(fontSize: TBBSizes.fontSizeSm, color: TBBColors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: TBBColors.black.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.grey),
    ),
    focusedBorder:const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: TBBColors.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: TBBColors.darkGrey,
    suffixIconColor: TBBColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: TBBSizes.inputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: TBBSizes.fontSizeMd, color: TBBColors.white),
    hintStyle: const TextStyle().copyWith(fontSize: TBBSizes.fontSizeSm, color: TBBColors.white),
    floatingLabelStyle: const TextStyle().copyWith(color: TBBColors.white.withValues(alpha: 0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: TBBColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TBBSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: TBBColors.warning),
    ),
  );
}
