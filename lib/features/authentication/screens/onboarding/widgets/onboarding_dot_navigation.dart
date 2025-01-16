
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_bear_board/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:the_bear_board/utils/constants/colors.dart';
import 'package:the_bear_board/utils/constants/sizes.dart';
import 'package:the_bear_board/utils/device/device_utility.dart';
import 'package:the_bear_board/utils/helpers/helper_functions.dart';


class OnboardingDotNav extends StatelessWidget {
  const OnboardingDotNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = TBBHelperFunctions.isDarkMode(context);
    return Positioned(
        bottom: TBBDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TBBSizes.defaultSpacing,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 3,
          effect: ExpandingDotsEffect(activeDotColor: dark ? TBBColors.light : TBBColors.dark, dotHeight: 6),
        ));
  }
}