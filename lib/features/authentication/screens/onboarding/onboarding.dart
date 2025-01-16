import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/controllers_onboarding/onboarding_controller.dart';
import 'package:the_bear_board/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:the_bear_board/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:the_bear_board/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:the_bear_board/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:the_bear_board/utils/constants/image_strings.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TBBImages.onboardingImage1,
                title: "Welcome to the Bear Board",
                subtitle: "Let's get sharing!",
              ),
              OnboardingPage(
                image: TBBImages.onboardingImage2,
                title: "Welcome to the Bear Board",
                subtitle: "Let's get sharing!",
              ),
              OnboardingPage(
                image: TBBImages.onboardingImage3,
                title: "Welcome to the Bear Board",
                subtitle: "Let's get sharing!",
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDotNav(),
          const OnboardingNextButton()
        ],
      ),
    );
  }
}


