import 'package:flutter/material.dart';
import 'package:diaryapp/tema/tema.dart';

class Penitioren extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = orange
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, size.height * 5)
      ..quadraticBezierTo(
        size.width * 0.2, // Kontrol kurva
        0,
        size.width * 0.7, // Titik akhir kurva
        size.height * 0.2,
      )
      ..lineTo(size.width * 0.9, size.height * 0.3) // Garis ke titik berikutnya
      ..lineTo(size.width, size.height * 0.5) // Garis ke ujung kanan
      ..lineTo(size.width, size.height) // Garis ke bawah
      ..lineTo(0, size.height) // Garis kembali ke kiri
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
