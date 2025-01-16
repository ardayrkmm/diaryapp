import 'package:flutter/foundation.dart';

class UsersModel {
  String uid;
  String nama;
  String email;
  int noTelp;

  UsersModel(
      {required this.uid,
      required this.email,
      required this.nama,
      required this.noTelp});

  Map<String, dynamic> toMap() {
    return {"uid": uid, "nama": nama, "email": email, "notelp": noTelp};
  }

  factory UsersModel.fromMap(Map<String, dynamic> map) {
    return UsersModel(
        uid: map['uid'],
        email: map['email'],
        nama: map['nama'],
        noTelp: map['notelp']);
  }
}
