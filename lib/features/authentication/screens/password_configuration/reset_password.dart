import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TBBSizes.defaultSpacing),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(TBBImages.deliveredEmailIllustration),
                width: TBBHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: TBBSizes.spaceBetweenSections,
              ),

              // Title and Subtitle
              Text(
                "Password Reset Email Sent",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TBBSizes.spaceBetweenItems,
              ),
              Text("Your Account Security is Our Priority! We've Sent You a Secure Link to Safely Change Your Password and Keep Your Account Protected.",
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(
                height: TBBSizes.spaceBetweenSections,
              ),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){}, child: const Text("Done")),
              ),
              const SizedBox(
                height: TBBSizes.spaceBetweenItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: (){}, child: const Text("Resend Email")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
