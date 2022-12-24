import 'dart:io';

import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:full_screen_image_null_safe/full_screen_image_null_safe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

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
        '/imageUpload': (context) => const ImageUpload(),
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
        onPressed: () {Navigator.pushNamed(context, '/imageUpload');},
        label: const Text("Add"),
        icon: Icon(Icons.add_a_photo),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class ImageUpload extends StatefulWidget {
  const ImageUpload({Key? key}) : super(key: key);

  @override
  State<ImageUpload> createState() => _ImageUploadState();
}

class _ImageUploadState extends State<ImageUpload> {
  String imageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: const Text("Share a Bear"), centerTitle: true,),
    body: Container(
      child: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                border: Border.all(color: Colors.white),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    spreadRadius: 2,
                    blurRadius: 1,
                  ),
                ],
              ),
              child: imageUrl.isNotEmpty ? Image.network(imageUrl) : Image.network('https://i.imgur.com/sUFH1Aq.png')
          ),
          SizedBox(height: 20.0,),
          ElevatedButton(
            child: Text("Upload Image", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)),
            onPressed: (){
              uploadImage();
            },
          ),
          ],
      ),
    ),);
  }

  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    XFile? image;
    //Check Permissions

    var permissionStatus = await Permission.photos.request();
    if (permissionStatus.isGranted){
      //Select Image
      image = await _imagePicker.pickImage(source: ImageSource.gallery);
      var file = File(image!.path);
      if (image != null){
        //Upload to Firebase
        var snapshot = await _firebaseStorage.ref()
            .child('images/imageName')
            .putFile(file);
        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }
}



