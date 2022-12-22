import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Bear Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bear Board")),
      body: const Center(child: Text("Bear Board")),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Add"),
        icon: Icon(Icons.add_a_photo),
      ),
    );
  }
}
