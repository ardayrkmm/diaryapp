import 'package:diaryapp/Widget/btnBaru.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bagianHeader() {
      return Container(
          width: double.infinity,
          margin: EdgeInsets.all(22),
          child: Center(
              child: Stack(
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30000), color: abu2),
              ),
              Positioned(
                top: 140,
                left: 150,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3000), color: orange),
                  child: Center(
                    child: Icon(
                      Icons.edit,
                      color: ungu,
                      size: 18,
                    ),
                  ),
                ),
              )
            ],
          )));
    }

    Widget bagianForm() {
      Widget Inputan(String nama, String textPesan) {
        return Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nama,
                style: abu2Style.copyWith(
                    fontSize: 18, color: Colors.black, fontWeight: normal),
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: textPesan,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: ungu)),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: ungu))),
              )
            ],
          ),
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Inputan("Nama", "Masukan Nama"),
            Inputan("Email", "Masukan Email"),
            Inputan("No Telp", "Masukan No Telp"),
            btnBaru(h: 44, w: double.infinity, nama: "Simpan")
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profil",
          style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [bagianHeader(), bagianForm()],
      ),
    );
  }
}
