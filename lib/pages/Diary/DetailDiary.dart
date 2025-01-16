import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class DetailDiary extends StatelessWidget {
  const DetailDiary({super.key});

  @override
  Widget build(BuildContext context) {
    Widget isiDiary() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        height: 700,
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: orange),
        child: Column(
          children: [
            TextField(
              style: putihStyle.copyWith(fontSize: 18, fontWeight: bold),
              decoration: InputDecoration(
                  hintStyle:
                      putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                  border: InputBorder.none,
                  hintText: "Masukan judul"),
            ),
            Expanded(
              child: TextField(
                maxLines: null,
                style: putihStyle.copyWith(fontSize: 18, fontWeight: normal),
                decoration: InputDecoration(
                    hintStyle:
                        putihStyle.copyWith(fontSize: 18, fontWeight: normal),
                    border: InputBorder.none,
                    hintText: "Ceritakan hari mu"),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: putih,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: ungu,
            )),
        centerTitle: true,
        title: Text(
          "Judul",
          textAlign: TextAlign.center,
          style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [isiDiary()],
      )),
    );
  }
}
