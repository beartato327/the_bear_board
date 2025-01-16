import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/screens/onboarding/onboarding.dart';
import 'package:the_bear_board/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TBBAppTheme.lightTheme,
      darkTheme: TBBAppTheme.darkTheme,
      home: const OnboardingScreen(),
    );
  }
}