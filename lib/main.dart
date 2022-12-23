import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseUIAuth.configureProviders([EmailAuthProvider()]);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var providers = [EmailAuthProvider()];
    return MaterialApp(
      initialRoute: '/',//FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile',
      routes:  {
        '/': (context) => const HomePage(),
        '/sign-in': (context) {
          return SignInScreen(
            providers: providers,
            actions: [
              AuthStateChangeAction<SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/');
              }),
            ],
          );
        },
        '/profile': (context) {
          return ProfileScreen(
            providers: providers,
            actions: [
              SignedOutAction((context) {
                Navigator.pushReplacementNamed(context, '/sign-in');
              }),
            ],
          );
        },
      },
      title: 'The Bear Board',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("The Bear Board", style: GoogleFonts.rubikMonoOne(textStyle: const TextStyle(letterSpacing: -2)),),centerTitle: true, actions: [IconButton(onPressed: (){Navigator.pushNamed(context, FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/profile');}, icon: const Icon(Icons.account_circle))],),
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
      floatingActionButton: FirebaseAuth.instance.currentUser == null ? Visibility(child: FloatingActionButton(onPressed: (){}, ), visible: false,) : FloatingActionButton.extended(
        onPressed: () {FirebaseFirestore.instance.collection('photos').snapshots().listen((data){print(data.docs[0]['photo']);});},
        label: const Text("Add"),
        icon: Icon(Icons.add_a_photo),
        backgroundColor: Colors.red,
      ),
    );
  }
}
