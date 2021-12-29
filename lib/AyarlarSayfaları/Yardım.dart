import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class Yardim extends StatefulWidget {
  const Yardim({Key? key}) : super(key: key);

  @override
  _YardimState createState() => _YardimState();
}

class _YardimState extends State<Yardim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
        title: Text("Yardım", style: TextStyle(color: rktext2, fontSize: 16),),
      ),
      body: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.help_outlined,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Yardım Merkezi",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.people,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Bize ulaşın",
                  "Sorularınız mı var?"
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
                  "Koşullar ve Gizlilik İlkesi",
                  ""
              )),
          Container(
              margin: EdgeInsets.all(10),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.info_outlined,
                    color: Colors.grey,
                    size: 22,
                  ),
                  "Uygulama bilgileri",
                  ""
              )),
        ],
      ),
    );
  }
}
