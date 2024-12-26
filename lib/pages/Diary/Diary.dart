import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KumpulanDiary extends StatelessWidget {
  const KumpulanDiary({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bagianHeader() {
      return Container(
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Kumpulan Diary",
              style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
            ),
            Container(
              width: 120,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: ungu),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seminggu",
                    style: putihStyle.copyWith(fontSize: 14, fontWeight: bold),
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: putih,
                    size: 20,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget bagianContent() {
      Widget peniti() {
        return Column(
          children: List.generate(
            2,
            (index) => Container(
              width: 80,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1000),
                        color: putih),
                  ),
                  Positioned(
                    left: -17,
                    bottom: 4,
                    child: SvgPicture.asset(
                      "assets/peniti.svg",
                      height: 20,
                      width: 40,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }

      return Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: orange),
              child: Row(
                children: [
                  peniti(),
                  Text("Judul",
                      style:
                          putihStyle.copyWith(fontSize: 18, fontWeight: bold))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300000),
                    color: ungu,
                  ),
                  child: Center(
                    child: Text(
                      "1",
                      style:
                          putihStyle.copyWith(fontSize: 16, fontWeight: bold),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(300000),
                    color: ungu.withOpacity(0.3),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(children: [bagianHeader(), bagianContent()]),
    )));
  }
}
