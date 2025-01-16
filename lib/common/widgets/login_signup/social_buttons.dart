import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TBBColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.google)),
        ),
        const SizedBox(width: TBBSizes.spaceBetweenItems),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TBBColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(onPressed: (){}, icon: const Icon(FontAwesomeIcons.facebookF)),
        ),
      ],
    );
  }
}