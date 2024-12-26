import 'package:diaryapp/pages/Diary/Diary.dart';
import 'package:diaryapp/pages/Diary/TambahDiary.dart';
import 'package:diaryapp/pages/Mainpage/Homepage.dart';
import 'package:diaryapp/pages/Mainpage/MoodPage.dart';
import 'package:diaryapp/pages/Profil/Profil.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int urutan = 0;

  @override
  Widget build(BuildContext context) {
    PageController pages = PageController();
    pilihHalaman(int angka) {
      setState(() {
        urutan = angka;
      });
      pages.animateToPage(angka,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    }

    @override
    void dispose() {
      pages.dispose();
      super.dispose();
    }

    List<Widget> bagianContent = [
      HomePage(),
      KumpulanDiary(),
      MoodPage(),
      Profil()
    ];
    Widget bagianNavbar() {
      Widget itemNavbar(int Angkahalaman, String gambar, String judul) {
        textMuncul() {
          if (urutan == Angkahalaman) {
            return Text(
              judul,
              style:
                  unguStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
            );
          } else {
            return SizedBox();
          }
        }

        return GestureDetector(
          onTap: () {
            pilihHalaman(Angkahalaman);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  gambar,
                  width: 25,
                  height: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                textMuncul()
              ],
            ),
          ),
        );
      }

      return Container(
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(color: putih),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            itemNavbar(0, "assets/home.png", "Home"),
            itemNavbar(1, "assets/Read.png", "Diary"),
            itemNavbar(2, "assets/smile.png", "Mood"),
            itemNavbar(3, "assets/User.png", "Profil")
          ],
        ),
      );
    }

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => TambahDiary(),
        ));
      }),
      body: PageView(
          controller: pages,
          onPageChanged: (value) {
            setState(() {
              urutan = value;
            });
          },
          children: bagianContent),
      bottomNavigationBar: bagianNavbar(),
    );
  }
}
