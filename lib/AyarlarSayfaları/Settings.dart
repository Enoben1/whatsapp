import 'package:flutter/material.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Bildirimler.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Depolama.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Hesap.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Profil.dart';
import 'package:whatsapp/AyarlarSayfalar%C4%B1/Yard%C4%B1m.dart';
import 'package:whatsapp/AyarlarSayfaları/Sohbetler.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class SettingsPage extends StatefulWidget {

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isClickSohbet = false;
  bool isClickHesap = false;
  bool isClickDepolama = false;
  bool isClickYardim = false;
  bool isClickProfil = false;
  bool isClickBildirim = false;
  bool isClickDavet = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
        title: Column(
          children: [
            Text(
              "Ayarlar",
              style: TextStyle(color: rktext2, fontSize: 16),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickProfil = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickProfil = false;
            }),
            onTapCancel: (){setState(() {
              isClickProfil = false;
            });},
            onTap: () async {
              isClickProfil = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => ProfilPage()),
              );
            },
            child: Container(
              color: isClickProfil!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
              child: Row(
                children: [
                  Expanded(child: MessageCard("Erdal Enes Kara", 33, false)),
                  Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(
                        Icons.qr_code,
                        color: rkwhatsappGreen,
                        size: 26,
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
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickHesap = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickHesap = false;
            }),
            onTapCancel: (){setState(() {
              isClickHesap = false;
            });},
            onTap: () async {
              isClickHesap = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Hesap()),
              );
            },
            child: Container(
              width: double.infinity,
                height: 82,
                color: isClickHesap!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingCard(
                          () {},
                          Icon(
                            Icons.vpn_key,
                            color: Colors.grey,
                            size: 22,
                          ),
                          "Hesap",
                          "Gizlilik, güvenlik, numara değiştir"),
                    ],
                  ),
                )),
          ), //hesap
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickSohbet = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickSohbet = false;
            }),
            onTapCancel: (){setState(() {
              isClickSohbet = false;
            });},
            onTap: () async {
              isClickSohbet = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Sohbetler()),
              );
            },
            child: Container(
              width: double.infinity,
              height: 82,
              color: isClickSohbet!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SettingCard(
                          () {},
                          Icon(
                            Icons.comment,
                            color: Colors.grey,
                            size: 22,
                          ),
                          "Sohbetler",
                          "Tema, duvar kağıtları, sohbet geçmişi"),
                    ],
                  ),
                )),
          ), //sohbetler
          GestureDetector(
    onTapDown: (detail) => setState(() {
    isClickBildirim = true;
    }),
            onTapUp: (detail) => setState(() {
              isClickBildirim = false;
            }),
    onTapCancel: (){setState(() {
    isClickBildirim = false;
    });},
            onTap: () async {
              isClickBildirim = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Bildirimler()),
              );
            },
            child: Container(
              width: double.infinity,
                height: 82,
                color: isClickBildirim!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SettingCard(
                      () {},
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                        size: 22,
                      ),
                      "Bildirimler",
                      "Mesaj, grup ve arama sesleri"),
                )),
          ), //bildirimler
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickDepolama = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickDepolama = false;
            }),
            onTapCancel: (){setState(() {
              isClickDepolama = false;
            });},
            onTap: () async {
              isClickDepolama = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Depolama()),
              );
            },
            child: Container(
                width: double.infinity,
                height: 82,
                color: isClickDepolama!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingCard(
                              () {},
                          Icon(
                            Icons.donut_large,
                            color: Colors.grey,
                            size: 22,
                          ),
                          "Depolama ve veriler",
                          "Ağ kullanımım, otomatik indirme"),
                    ],
                  ),
                )),
          ), //depolama
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickYardim = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickYardim = false;
            }),
            onTapCancel: (){setState(() {
              isClickYardim = false;
            });},
            onTap: () async {
              isClickYardim = false;
              final navigator = Navigator.of(context);
              await Future.delayed(Duration.zero);
              navigator.push(
                MaterialPageRoute(
                    builder: (_) => Yardim()),
              );
            },
            child: Container(
                width: double.infinity,
                height: 82,
                color: isClickYardim!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingCard(
                              () {},
                          Icon(
                            Icons.help_outline,
                            color: Colors.grey,
                            size: 22,
                          ),
                          "Yardım",
                          "Yardım merkezi, bize ulaşın, gizlilik ilkesi"),
                    ],
                  ),
                )),
          ), //yardım
          GestureDetector(
            onTapDown: (detail) => setState(() {
              isClickDavet = true;
            }),
            onTapUp: (detail) => setState(() {
              isClickDavet = false;
            }),
            onTapCancel: (){setState(() {
              isClickDavet = false;
            });},
            onTap: () async {
              isClickDavet = false;
            },
            child: Container(
                width: double.infinity,
                height: 82,
                color: isClickDavet!=true?Colors.transparent:Colors.grey.withOpacity(0.15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SettingCard(
                              () {},
                          Icon(
                            Icons.people,
                            color: Colors.grey,
                            size: 22,
                          ),
                          "Arkadaş davet edin",
                          ""),
                    ],
                  ),
                )),
          ), //davet et
        ],
      ),
    );
  }
}
