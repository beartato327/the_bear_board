import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_bear_board/common/widgets/login_signup/form_divider.dart';
import 'package:the_bear_board/common/widgets/login_signup/social_buttons.dart';
import 'package:the_bear_board/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:the_bear_board/utils/constants/colors.dart';
import 'package:the_bear_board/utils/constants/sizes.dart';
import 'package:the_bear_board/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TBBHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TBBSizes.defaultSpacing),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Share the love, create an account",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: TBBSizes.spaceBetweenSections,
            ),
            SignupForm(dark: dark),

            const SizedBox(height: TBBSizes.spaceBetweenSections,),
            FormDivider(dark: dark, dividerText: "Or sign up with"),

            const SizedBox(height: TBBSizes.spaceBetweenSections,),
            const SocialButtons()
          ]),
        ),
      ),
    );
  }
}

