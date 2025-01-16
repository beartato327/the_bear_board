import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          height: 300,
          image: AssetImage("assets/logos/logo.png"),
        ),
        Text('Welcome!', style: Theme.of(context).textTheme.headlineMedium,),
      ],
    );
  }
}