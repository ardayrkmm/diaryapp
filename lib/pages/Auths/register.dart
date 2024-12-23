import 'package:diaryapp/Widget/btnBaru.dart';
import 'package:diaryapp/tema/tema.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
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
                          const Expanded(
                            child: TextField(
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
                          const Expanded(
                            child: TextField(
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
                          const Expanded(
                            child: TextField(
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
                          const Expanded(
                            child: TextField(
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
              btnBaru(
                h: 44,
                w: double.infinity,
                nama: "Register",
                cekwarna: true,
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
