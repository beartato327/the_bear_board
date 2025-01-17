import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/screens/password_configuration/reset_password.dart';

import '../../../../utils/constants/sizes.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TBBSizes.defaultSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Headings
            Text(
              "Forget password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TBBSizes.spaceBetweenItems),
            Text(
              "Don’t worry sometimes people can forget too, enter your email and we will send you a password reset link.",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TBBSizes.spaceBetweenSections * 2),

            // Text field
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(
              height: TBBSizes.spaceBetweenSections,
            ),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() => const ResetPasswordScreen()),
                child: const Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
