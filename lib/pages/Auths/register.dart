import 'package:diaryapp/Widget/btnBaru.dart';
import 'package:diaryapp/pages/Auths/Login.dart';
import 'package:diaryapp/service/AuthService.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController namaC = TextEditingController();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();
  final TextEditingController notelpC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Authservice auths = Authservice();
    Future<void> buatAkun() async {
      await auths.register(
          namaC.text, passwordC.text, emailC.text, int.parse(notelpC.text));

      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Login(),
      ));
    }

    Widget bagianHeader() {
      return Align(
        alignment: Alignment.topCenter,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Image.asset(
            "assets/login.png",
            width: 150,
            height: 150,
          ),
        ),
      );
    }

    Widget content() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 700,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: ungu,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(50),
                topLeft: Radius.circular(50),
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Register",
                style: orangeStyle.copyWith(fontSize: 18, fontWeight: bold),
              ),
              Text(
                "Buat akun dahulu \nagar dapat mengakses aplikasi",
                style: abu2Style.copyWith(fontSize: 14, fontWeight: light),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style:
                          putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 18),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: putih,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            margin: const EdgeInsets.only(right: 10),
                            height: 18,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/email.png"))),
                          ),
                          Expanded(
                            child: TextField(
                              controller: emailC,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nama",
                      style:
                          putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 18),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: putih,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            margin: const EdgeInsets.only(right: 10),
                            height: 24,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/User.png"))),
                          ),
                          Expanded(
                            child: TextField(
                              controller: namaC,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "No Telepon",
                      style:
                          putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 18),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: putih,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            margin: const EdgeInsets.only(right: 10),
                            height: 24,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/call.png"))),
                          ),
                          Expanded(
                            child: TextField(
                              controller: notelpC,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style:
                          putihStyle.copyWith(fontSize: 18, fontWeight: bold),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 6),
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 18),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: putih,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 24,
                            margin: const EdgeInsets.only(right: 10),
                            height: 24,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Lock.png"))),
                          ),
                          Expanded(
                            child: TextField(
                              controller: passwordC,
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none),
                            ),
                          ),
                          Container(
                            width: 24,
                            height: 24,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Blind.png"))),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: buatAkun,
                child: btnBaru(
                  h: 44,
                  w: double.infinity,
                  nama: "Register",
                  cekwarna: true,
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: putih,
      body: Stack(
        children: [bagianHeader(), content()],
      ),
    );
  }
}
