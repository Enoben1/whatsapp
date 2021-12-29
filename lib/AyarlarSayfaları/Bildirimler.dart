import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class Bildirimler extends StatefulWidget {
  const Bildirimler({Key? key}) : super(key: key);

  @override
  _BildirimlerState createState() => _BildirimlerState();
}

class _BildirimlerState extends State<Bildirimler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
        title: Text("Bildirimler", style: TextStyle(color: rktext2, fontSize: 16),),
      ),
      body: ListView(children: [
        SizedBox(height: 5,),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Sohbet sesleri",
                "Gelen ve giden mesajlarde ses çalar"
            )),
        Divider(color: rkappbar,),
        Container(margin: EdgeInsets.only(left: 55 ,right: 15, top: 15, bottom: 15), child: Text("Mesajlar", style: stytxt2,),),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Bildirim tonu",
                "Varsayılan"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Titreşim",
                "Varsayılan"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Işık",
                "Beyaz"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Yüksek öncelikli bildirim kullanımı",
                "Ekranın üst kısmındaki bildirimlerin önizlemelerini göster"
            )),
        Divider(color: rkappbar,),
        Container(margin: EdgeInsets.only(left: 55 ,right: 15, top: 15, bottom: 15), child: Text("Gruplar", style: stytxt2,),),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Bildirim tonu",
                "Varsayılan"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Titreşim",
                "Varsayılan"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Işık",
                "Beyaz"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Yüksek öncelikli bildirim kullanımı",
                "Ekranın üst kısmındaki bildirimlerin önizlemelerini göster"
            )),
        Divider(color: rkappbar,),
        Container(margin: EdgeInsets.only(left: 55 ,right: 15, top: 15, bottom: 15), child: Text("Aramalar", style: stytxt2,),),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Zil sesi",
                "Varsayılan"
            )),
        Container(
            margin: EdgeInsets.only(right: 15, top: 15, bottom: 15),
            child: SettingCard(
                    () {},
                Icon(
                  Icons.add,
                  color: Colors.transparent,
                ),
                "Titreşim",
                "Varsayılan"
            )),
      ],),
    );
  }
}
