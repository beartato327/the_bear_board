import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      appBar: AppBar(title: Text("The Bear Board", style: GoogleFonts.rubikMonoOne(textStyle: const TextStyle(letterSpacing: -2)),),centerTitle: true, actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle))],),
      body: GridView.custom(
        gridDelegate: SliverQuiltedGridDelegate(
          crossAxisCount: 4,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          repeatPattern: QuiltedGridRepeatPattern.inverted,
          pattern: [
            QuiltedGridTile(2, 2),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 1),
            QuiltedGridTile(1, 2),
          ],
        ),
        childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => GridTile(child: FullScreenWidget(child: Image.network("https://source.unsplash.com/random?sig=$index", fit: BoxFit.cover, )), ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {FirebaseFirestore.instance.collection('photos').snapshots().listen((data){print(data.docs[0]['photo']);});},
        label: const Text("Add"),
        icon: Icon(Icons.add_a_photo),
        backgroundColor: Colors.red,
      ),
    );
  }
}
