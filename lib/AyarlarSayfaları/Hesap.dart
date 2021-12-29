import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class Hesap extends StatefulWidget {
  @override
  State<Hesap> createState() => _HesapState();
}
class _HesapState extends State<Hesap> {
  TextEditingController eCTRL = TextEditingController();
  int MaxLines = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hesap", style: TextStyle(color: rktext2, fontSize: 16),),
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
      ),
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Gizlilik",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.security,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Güvenlik",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.textsms,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "İki adımlı doğrulama",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.send_to_mobile,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Numara değiştir",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.description,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Hesap bilgilerini talep et",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.delete,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Hesabımı sil",
                  ""
              )),
        ],
      ),
    );
  }
}
