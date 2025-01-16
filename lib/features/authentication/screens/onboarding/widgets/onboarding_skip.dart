import 'package:flutter/material.dart';
import 'package:the_bear_board/features/authentication/controllers_onboarding/onboarding_controller.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TBBDeviceUtils.getAppBarHeight(),
        right: TBBSizes.defaultSpacing,
        child: TextButton(onPressed: () => OnboardingController.instance.skipPage(), child: const Text('Skip')));
  }
}
