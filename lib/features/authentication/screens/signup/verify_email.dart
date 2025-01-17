import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/features/authentication/screens/login/login.dart';
import 'package:the_bear_board/common/widgets/success_screen/success_screen.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [IconButton(onPressed: () => Get.offAll(()=> const LoginScreen()), icon: const Icon(Icons.clear))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TBBSizes.defaultSpacing),
          child: Column(
            children: [
              // Image
              Image(image: const AssetImage(TBBImages.deliveredEmailIllustration), width: TBBHelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TBBSizes.spaceBetweenSections,),

              // Title and Subtitle
              Text("Verify your email", style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TBBSizes.spaceBetweenItems,),
              Text('test@test.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TBBSizes.spaceBetweenItems,),
              Text('Verify Your Email to Start Sharing Your Pup!', style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TBBSizes.spaceBetweenSections,),

              // Buttons
              SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
                image: TBBImages.staticSuccessIllustration,
                title: "Your account successfully created!",
                subTitle: 'Welcome to Your Ultimate Shopping Destination: Your Account is Created, Unleash the Joy of Seamless Online Shopping!',
                onPressed: () => Get.to(() => const LoginScreen()),
              )), child: const Text('Continue')),),
              const SizedBox(height: TBBSizes.spaceBetweenItems,),
              SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text('Resend Email')),)

            ],
          ),
        ),
      ),
    );
  }
}
