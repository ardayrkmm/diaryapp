import 'package:carousel_slider/carousel_slider.dart';
import 'package:diaryapp/Widget/penitiOren.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bagianHeader() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: ungu, borderRadius: BorderRadius.circular(3000)),
            ),
            SizedBox(
              width: 18,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Selamat Pagi",
                    style:
                        orangeStyle.copyWith(fontSize: 16, fontWeight: normal),
                  ),
                  Text(
                    "Amad",
                    style: unguStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/setting.png"))),
                ))
          ],
        ),
      );
    }

    Widget bagianJum() {
      return Container(
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
        width: double.infinity,
        height: 200,
        padding: EdgeInsets.all(18),
        decoration:
            BoxDecoration(color: ungu, borderRadius: BorderRadius.circular(12)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pantau Mood \nKamu Setiap Hari",
                  style: putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: 101,
                  height: 44,
                  decoration: BoxDecoration(
                      color: orange, borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Ayo Lihat",
                      style:
                          putihStyle.copyWith(fontSize: 16, fontWeight: bold),
                    ),
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/banne.png",
            )
          ],
        ),
      );
    }

    final List<Map<String, String>> items = [
      {
        'title': 'Cerita pagi hari',
        'date': 'Sabtu, 20-12-2022',
        'color': '0xFF9BA3EB',
      },
      {
        'title': 'Cerita siang hari',
        'date': 'Minggu, 21-12-2022',
        'color': '0xFFFF6B6B',
      },
      {
        'title': 'Cerita malam hari',
        'date': 'Senin, 22-12-2022',
        'color': '0xFF81C784',
      },
    ];

    Widget bagianDiary() {
      Widget peniti() {
        return Column(
          children: List.generate(
            7,
            (index) => Container(
              width: 80,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                children: [
                  Container(
                    width: 14,
                    height: 14,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: putih),
                  ),
                ],
              ),
            ),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.only(bottom: 20),
        child: CarouselSlider(
            items: items
                .map((e) => Builder(
                      builder: (context) => Container(
                        width: 262,
                        height: 400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(int.parse(e['color']!))),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 10, top: 60, bottom: 20, child: peniti()),
                          ],
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                height: 400,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(seconds: 8),
                viewportFraction: 0.65)),
      );
    }

    ;

    return Scaffold(
        body: SafeArea(
            child: ListView(
                children: [bagianHeader(), bagianJum(), bagianDiary()])));
  }
}
