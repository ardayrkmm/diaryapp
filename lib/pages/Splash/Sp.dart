import 'package:diaryapp/pages/Splash/Sp2.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class Sp extends StatefulWidget {
  const Sp({super.key});

  @override
  State<Sp> createState() => _SpState();
}

class _SpState extends State<Sp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Sp2(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "DIAPP",
          style: unguStyle.copyWith(
              fontSize: 50, fontWeight: bold, letterSpacing: 30),
        ),
      ),
    );
  }
}
