import 'package:flutter/material.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Profil.dart';
import 'package:whatsapp/AyarlarSayfaları/Sohbetler.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class SettingsPage extends StatefulWidget {

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int isClickSohbet = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkbackground,
      appBar: AppBar(
        backgroundColor: rkappbar,
        title: Column(
          children: [
            Text(
              "Ayarlar",
              style: TextStyle(color: rktext2, fontSize: 18),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickSohbet = 1;
            }),
            onTapUp: (detail) => setState(() {
              isClickSohbet = 0;
            }),
            onTapCancel: (){setState(() {
              isClickSohbet = 0;
            });},
            onTap: () async {
              isClickSohbet = 0;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => ProfilPage()),
              );
            },
            child: Container(
              color: isClickSohbet!=1?Colors.transparent:Colors.grey.withOpacity(0.15),
              child: Row(
                children: [
                  Expanded(child: MessageCard("Erdal Enes Kara", 33, false)),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(
                        Icons.qr_code,
                        color: rkwhatsappGreen,
                        size: 18,
                      )), //qrcode
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 0.4,
            color: rkappbar,
          ), //çizgi
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.vpn_key,
                    color: Colors.grey,
                    size: 18,
                  ),
                  "Hesap",
                  "Gizlilik, güvenlik, numara değiştir")), //hesap
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickSohbet = 2;
            }),
            onTapUp: (detail) => setState(() {
              isClickSohbet = 0;
            }),
            onTapCancel: (){setState(() {
              isClickSohbet = 0;
            });},
            onTap: () async {
              isClickSohbet = 0;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Sohbetler()),
              );
            },
            child: Container(
              color: isClickSohbet!=2?Colors.transparent:Colors.grey.withOpacity(0.15),
                margin: EdgeInsets.all(15),
                child: SettingCard(
                    () {},
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                      size: 18,
                    ),
                    "Sohbetler",
                    "Tema, duvar kağıtları, sohbet geçmişi")),
          ), //sohbetler
          GestureDetector(
    onTapDown: (detail) => setState(() {
    isClickSohbet = 3;
    }),
            onTapUp: (detail) => setState(() {
              isClickSohbet = 0;
            }),
    onTapCancel: (){setState(() {
    isClickSohbet = 0;
    });},
    onTap: () {
    isClickSohbet = 0;
    },
            child: Container(
                color: isClickSohbet!=3?Colors.transparent:Colors.grey.withOpacity(0.15),
                margin: EdgeInsets.all(15),
                child: SettingCard(
                    () {},
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                      size: 18,
                    ),
                    "Bildirimler",
                    "Mesaj, grup ve arama sesleri")),
          ), //bildirimler
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.storage,
                    color: Colors.grey,
                    size: 18,
                  ),
                  "Depolama ve veriler",
                  "Ağ kullanımı, otomatik indirme")), //depolama
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.help_outline,
                    color: Colors.grey,
                    size: 18,
                  ),
                  "Yardım",
                  "Yardım merkezi, bize ulaşın, gizlilik ilkesi")), //yardım
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.people,
                    color: Colors.grey,
                    size: 18,
                  ),
                  "Arkadaş davet edin",
                  "")), //davet et
        ],
      ),
    );
  }
}
