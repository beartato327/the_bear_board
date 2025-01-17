import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/screens/signup/verify_email.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person),
                  )),
            ),
            const SizedBox(width: TBBSizes.spaceBetweenInputFields),
            Expanded(
              child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: TBBSizes.spaceBetweenInputFields,
        ),
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Username",
              prefixIcon: Icon(Icons.account_circle),
            )),
        const SizedBox(
          height: TBBSizes.spaceBetweenInputFields,
        ),
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
            )),
        const SizedBox(
          height: TBBSizes.spaceBetweenInputFields,
        ),
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: "Phone Number",
              prefixIcon: Icon(Icons.phone),
            )),
        const SizedBox(
          height: TBBSizes.spaceBetweenInputFields,
        ),
        TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.visibility))),
        const SizedBox(
          height: TBBSizes.spaceBetweenInputFields,
        ),
        Row(
          children: [
            SizedBox(
                width: 24,
                height: 24,
                child: Checkbox(value: true, onChanged: (value) {})),
            const SizedBox(
              width: TBBSizes.spaceBetweenItems,
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: "I agree to",
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: "privacy policy ",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TBBColors.white : TBBColors.primary,
                      decoration: TextDecoration.underline)),
              TextSpan(
                  text: "and", style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                  text: " terms and conditions",
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? TBBColors.white : TBBColors.primary,
                      decoration: TextDecoration.underline)),
            ]))
          ],
        ),
        const SizedBox(
          height: TBBSizes.spaceBetweenSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: const Text("Create Account")),
        )
      ],
    ));
  }
}
