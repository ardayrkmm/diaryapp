import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class btnBaru extends StatelessWidget {
  double h, w;
  String nama;
  bool cekwarna;

  btnBaru(
      {super.key,
      required this.h,
      required this.w,
      required this.nama,
      this.cekwarna = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: cekwarna == false ? ungu : putih),
      child: Center(
        child: Text(
          nama,
          style: cekwarna == false
              ? putihStyle
              : unguStyle.copyWith(fontSize: 16, fontWeight: bold),
        ),
      ),
    );
  }
}
