import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_bear_board/firebase_options.dart';

import 'app.dart';

Future<void> main() async {

  // Add Widgets Binding
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));

  // Load all the Material Design / Theme / Localizations / Bindings
  runApp(const App());
}
