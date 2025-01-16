import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class MoodPage extends StatelessWidget {
  const MoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bagianJum() {
      return Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        width: double.infinity,
        height: 200,
        padding: const EdgeInsets.all(18),
        decoration:
            BoxDecoration(color: ungu, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                const SizedBox(
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
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.broken_image, size: 100);
              },
            )
          ],
        ),
      );
    }

    Widget bagianBtnHari() {
      List<String> hari = [
        "Senin",
        "Selasa",
        "Rabu",
        "Kamis",
        "Jumat",
        "Sabtu",
        "Minggu"
      ];
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: hari.map((e) {
            return Container(
              width: 50,
              height: 78,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: ungu),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("\ud83d\ude1e"), // Emoji
                  Text(
                    e.substring(0, 3),
                    style: putihStyle.copyWith(fontSize: 14, fontWeight: bold),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      );
    }

    Widget bagianStastitik() {
      List<String> filters = [
        "1 Hari",
        "1 Minggu",
        "1 Bulan",
        "3 Tahun",
        "Semua"
      ];
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: filters.map((filter) {
                  return Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 18),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color:
                            filter == "1 Hari" ? orange : Colors.transparent),
                    child: Center(
                      child: Text(
                        filter,
                        style:
                            unguStyle.copyWith(fontSize: 18, fontWeight: bold),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),
            LineChart(LineChartData(
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(show: true),
              borderData: FlBorderData(show: true),
              minX: 0,
              maxX: 7,
              minY: 0,
              maxY: 10,
              lineBarsData: [
                LineChartBarData(
                  spots: const [
                    FlSpot(0, 3),
                    FlSpot(1, 1),
                    FlSpot(2, 4),
                    FlSpot(3, 7),
                    FlSpot(4, 6),
                    FlSpot(5, 8),
                    FlSpot(6, 7),
                  ],
                  isCurved: true,
                  barWidth: 4,
                  isStrokeCapRound: true,
                  belowBarData: BarAreaData(show: false),
                ),
              ],
            )),
          ],
        ),
      );
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Mood Statistik",
            style: unguStyle.copyWith(fontSize: 18, fontWeight: bold),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: ListView(
            children: [bagianJum(), bagianBtnHari()],
          ),
        ));
  }
}
