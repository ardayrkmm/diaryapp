import 'package:diaryapp/pages/Auths/Login.dart';
import 'package:diaryapp/pages/Auths/register.dart';
import 'package:diaryapp/pages/Mainpage/Mainpage.dart';
import 'package:diaryapp/pages/Profil/EditProfil.dart';
import 'package:diaryapp/pages/Profil/Profil.dart';
import 'package:diaryapp/pages/Splash/Sp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: {
      //   "/": (context) => Sp(),
      //   "/sp2": (context) => Sp(),
      // },
      home: Register(),
    );
  }
}
