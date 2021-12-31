import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class Depolama extends StatefulWidget {
  const Depolama({Key? key}) : super(key: key);

  @override
  _DepolamaState createState() => _DepolamaState();
}

class _DepolamaState extends State<Depolama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
        title: Text("Depolama ve veriler", style: TextStyle(color: rktext2, fontSize: 16),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.folder,
                    color: Colors.grey,
                  ),
                  "Depolama alanını yönet",
                  "Data"
              )),//depolama
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.grey,
                  ),
                  "Ağ kullanımı",
                  "data gönderilen data alınan"
              )),//ağ kullanımı
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.transparent,
                  ),
                  "Aramalar için daha az veri kullan",
                  ""
              )),//aramalar
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
            child: Text(
              "Medyayı otomatik indir",
              style: TextStyle(color: rktext, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
            child: Text(
              "Sesli mesajlar her zaman otomatik olarak indir",
              style: TextStyle(color: rktext, fontSize: 12),
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.transparent,
                  ),
                  "Mobil veri kullanırken",
                  "medya yok"
              )),//mobil veri
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.transparent,
                  ),
                  "Wi-Fi ağına bağlıyken",
                  "Medya yok"
              )),// wifi
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.transparent,
                  ),
                  "Dolaşımdayken",
                  "Medya yok"
              )),//dolaşımdayken
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
            child: Text(
              "Medya yükleme kalitesi",
              style: TextStyle(color: rktext, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
            child: Text(
              "Gönderilecek medya dosyalarının kalitesini seçin",
              style: TextStyle(color: rktext, fontSize: 12),
            ),
          ),
          Container(
              margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
              child: SettingCard(
                      () {},
                  Icon(
                    Icons.donut_large,
                    color: Colors.transparent,
                  ),
                  "Fotoğraf yükleme kalitesi",
                  "Otomatik"
              )),//Fotograf
        ],
      ),
    );
  }
}
