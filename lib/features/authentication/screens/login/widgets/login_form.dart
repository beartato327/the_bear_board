import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/screens/signup/signup.dart';

import '../../../../../utils/constants/sizes.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TBBSizes.spaceBetweenSections),
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: "Email"),
              ),
              const SizedBox(
                height: TBBSizes.spaceBetweenInputFields,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility)),
              ),
              const SizedBox(height: TBBSizes.spaceBetweenItems / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text("Remember Me")
                    ],
                  ),
                  TextButton(
                      onPressed: () {}, child: const Text("Forgot Password?"))
                ],
              ),
              const SizedBox(height: TBBSizes.spaceBetweenSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text("Login"))),
              const SizedBox(height: TBBSizes.spaceBetweenItems),
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                      onPressed: () => Get.to(() => const SignupScreen()), child: const Text("Sign Up"))),
            ],
          ),
        ));
  }
}