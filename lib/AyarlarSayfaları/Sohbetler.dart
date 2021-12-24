import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class Sohbetler extends StatefulWidget {
  @override
  State<Sohbetler> createState() => _SohbetlerState();
}

class _SohbetlerState extends State<Sohbetler> {
  bool chkboxTema1 = false;
  bool chkboxTema2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkbackground,
      appBar: AppBar(
        backgroundColor: rkappbar,
        title: Column(
          children: [
            Text(
              "Sohbetler",
              style: TextStyle(color: rktext2, fontSize: 15),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 25, top: 15),
                  child: Text(
                    "Görüntüleme",
                    style: TextStyle(color: rktext, fontSize: 15),
                  )),
            ],
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => new AlertDialog(
                          title: Text(
                            'Tema seç',
                            style: stynametxt,
                          ),
                          content: Flexible(
                            child: Row(
                              children: [
                                Checkbox(
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateProperty.all(chkboxTema1 ? rkwhatsappGreen: rktext2),
                                    value: chkboxTema1,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Navigator.pop(context);
                                        chkboxTema1 = true;
                                        chkboxTema2 = false;
                                        isDarkMode = chkboxTema2;
                                      });
                                    }),
                                Text(
                                  'Açık',
                                  style: stynametxt,
                                ),
                                Checkbox(
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateProperty.all(chkboxTema2 ? rkwhatsappGreen: rktext2),
                                    value: chkboxTema2,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        Navigator.pop(context);
                                        chkboxTema2 = true;
                                        chkboxTema1 = false;
                                        isDarkMode = chkboxTema2;
                                      });
                                    }),
                                Text(
                                  'Koyu',
                                  style: stynametxt,
                                ),
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "İPTAL",
                                    style: TextStyle(color: rkwhatsappGreen),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "TAMAM",
                                    style: TextStyle(color: rkwhatsappGreen),
                                  ),
                                ),
                              ],
                            )
                          ],
                          backgroundColor: rkpopupmenu,
                        ));
              },
              child: Container(
                  margin: EdgeInsets.all(15),
                  child: SettingCard(
                      () {},
                      Icon(
                        Icons.brightness_6,
                        color: Colors.grey,
                        size: 20,
                      ),
                      "Tema",
                      "Uygulama temasını değiştir"))),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.crop_original,
                    color: Colors.grey,
                    size: 20,
                  ),
                  "Duvar kağıdı",
                  "")),
          Container(
            width: double.infinity,
            height: 1,
            color: rkappbar,
          ),
          Row(
            children: [
              Container(
                  margin: EdgeInsets.only(left: 25, top: 15),
                  child: Text(
                    "Sohbet ayarları",
                    style: TextStyle(color: rktext, fontSize: 15),
                  )),
            ],
          ),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.crop_original,
                    color: Colors.transparent,
                  ),
                  "Enter tuşu gönderir",
                  "Enter tuşu mesajınızı gönderir")),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.crop_original,
                    color: Colors.transparent,
                  ),
                  "Medya görünürlüğü",
                  "Yeni indirilen medyaları telefonunuzun galerisinde gösterir")),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.crop_original,
                    color: Colors.transparent,
                  ),
                  "Yazı tipi boyutu",
                  "data")),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.cloud_upload,
                    color: Colors.grey,
                    size: 20,
                  ),
                  "Sohbet yedeği",
                  "")),
          Container(
              margin: EdgeInsets.all(15),
              child: SettingCard(
                  () {},
                  Icon(
                    Icons.history,
                    color: Colors.grey,
                    size: 20,
                  ),
                  "Sohbet geçmişi",
                  "")),
          Text("DarkMode: "+isDarkMode.toString(), style: TextStyle(color: Colors.blue, fontSize: 20),)
        ],
      ),
    );
  }
}
