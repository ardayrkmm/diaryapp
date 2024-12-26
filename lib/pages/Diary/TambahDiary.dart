import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class TambahDiary extends StatelessWidget {
  const TambahDiary({super.key});

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

    Widget pilihMood() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pilih mood kamu hari ini",
                style: unguStyle.copyWith(fontSize: 18, fontWeight: bold)),
            SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 18),
                  child: Text(
                    "😁",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 18),
                  child: Text("😞", style: TextStyle(fontSize: 30)),
                ),
                Container(
                  margin: EdgeInsets.only(right: 18),
                  child: Text("😡", style: TextStyle(fontSize: 30)),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget bagianBtn() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        width: double.infinity,
        height: 44,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(12), color: ungu),
        child: Center(
          child: Text(
            "Simpan",
            style: putihStyle.copyWith(fontSize: 20, fontWeight: bold),
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: putih,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: ungu,
            )),
        centerTitle: true,
        title: Text(
          "Ceritakan apa yang\nterjadi hari ini",
          textAlign: TextAlign.center,
          style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [isiDiary(), pilihMood(), bagianBtn()],
        ),
      ),
    );
  }
}
