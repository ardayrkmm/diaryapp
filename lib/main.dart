import 'package:diaryapp/pages/Auths/Login.dart';
import 'package:diaryapp/pages/Auths/register.dart';
import 'package:diaryapp/pages/Splash/Sp.dart';
import 'package:flutter/material.dart';

void main() {
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
