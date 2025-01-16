import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';

class TBBSpacingStyle{
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
      top: TBBSizes.appBarHeight,
      left: TBBSizes.defaultSpacing,
      bottom: TBBSizes.defaultSpacing,
      right: TBBSizes.defaultSpacing
  );
}