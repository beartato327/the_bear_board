import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(56),
      child: Column(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: 150,
                image: AssetImage("assets/logos/logo.png"),
              ),
              Text('Welcome!'),
            ],
          ),
          Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email), labelText: "Email"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      labelText: "Password",
                      suffixIcon: Icon(Icons.visibility)),
                ),
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
                const SizedBox(height: 20),
                SizedBox(
                    width: double.infinity,
                    child:
                        ElevatedButton(onPressed: () {}, child: const Text("Login"))),
                const SizedBox(height: 16),
                SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: Text("Sign Up"))),
                const SizedBox(height: 32),
              ],
            ),
          )),
          const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Divider(thickness: .5, indent: 60, endIndent: 5),
          ],)
        ],
      ),
    )));
  }
}
