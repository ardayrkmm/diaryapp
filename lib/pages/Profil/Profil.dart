import 'package:diaryapp/pages/Profil/EditProfil.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bagianHeader() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60000), color: ungu),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nama",
                  style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
                Text(
                  "Email",
                  style: unguStyle.copyWith(fontSize: 14, fontWeight: normal),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EditProfil(),
                    ));
                  },
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: ungu),
                    height: 30,
                    child: Center(
                      child: Text(
                        "Edit Profil",
                        style:
                            putihStyle.copyWith(fontSize: 14, fontWeight: bold),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bagianContent() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Detail Profil",
                    style: orangeStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: ungu,
                    size: 24,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ubah Password",
                    style: orangeStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: ungu,
                    size: 24,
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Keluar ",
                    style: orangeStyle.copyWith(fontSize: 18, fontWeight: bold),
                  ),
                  Icon(
                    Icons.arrow_right,
                    color: ungu,
                    size: 24,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Profile",
            style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
        ),
        body: SafeArea(
            child: Column(
          children: [bagianHeader(), bagianContent()],
        )));
  }
}
