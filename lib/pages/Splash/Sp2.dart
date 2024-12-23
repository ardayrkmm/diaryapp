import 'package:diaryapp/Widget/btnBaru.dart';
import 'package:diaryapp/pages/Auths/Login.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class Sp2 extends StatelessWidget {
  const Sp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/sp.png"))),
            ),
            Text(
              "Tempat Cerita",
              style: orangeStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Memberi tempat cerita tanpa di ketahui orang",
              style: orangeStyle.copyWith(
                  fontSize: 16, fontWeight: normal, color: Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
                },
                child:
                    btnBaru(h: 44, w: double.infinity, nama: "Mulai Bercerita"))
          ],
        ),
      ),
    );
  }
}
