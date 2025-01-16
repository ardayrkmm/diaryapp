import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:diaryapp/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Authservice {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseStore = FirebaseFirestore.instance;

  Future<UsersModel?> register(
      String nama, String password, String email, int noTelp) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      User? user = userCredential.user;

      if (user != null) {
        UsersModel users =
            UsersModel(email: email, nama: nama, noTelp: noTelp, uid: user.uid);

        await firebaseStore
            .collection("users")
            .doc(user.uid)
            .set(users.toMap());
        return users;
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<UsersModel?> login(String email, String Password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: Password);

      User? user = userCredential.user;

      if (user != null) {
        DocumentSnapshot userDoc =
            await firebaseStore.collection('users').doc(user.uid).get();

        if (userDoc.exists) {
          return UsersModel.fromMap(userDoc.data() as Map<String, dynamic>);
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
