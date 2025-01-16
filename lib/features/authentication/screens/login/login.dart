import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:the_bear_board/common/styles/spacing_styles.dart';
import 'package:the_bear_board/features/authentication/screens/login/widgets/login_form.dart';
import 'package:the_bear_board/features/authentication/screens/login/widgets/login_header.dart';
import 'package:the_bear_board/utils/constants/sizes.dart';
import 'package:the_bear_board/utils/helpers/helper_functions.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = TBBHelperFunctions.isDarkMode(context);
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TBBSpacingStyle.paddingWithAppBarHeight,
      child: Column(
        children: [
          const LoginHeader(),
          const LoginForm(),
          FormDivider(dark: dark, dividerText: "Or sign in with"),
          const SizedBox(height: TBBSizes.spaceBetweenSections,),
          const SocialButtons()
        ],
      ),
    )));
  }
}








