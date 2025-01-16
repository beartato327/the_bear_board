import 'package:flutter/material.dart';
import 'package:the_bear_board/features/authentication/controllers_onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = TBBHelperFunctions.isDarkMode(context);
    return Positioned(
        right: TBBSizes.defaultSpacing,
        bottom: TBBDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () => OnboardingController.instance.nextPage(), style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? Colors.white : Colors.black), child: const Icon(Icons.arrow_right_alt)));
  }
}