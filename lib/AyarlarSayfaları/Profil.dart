import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  _ProfilPageState createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Profil",
              style: TextStyle(color: rktext2, fontSize: 18),
            )
          ],
        ),
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.all(15),
                  child: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                    radius: 80,
                    backgroundImage: AssetImage(
                        'Resimler/Kisiler/' + "Erdal Enes Kara" + ".JPG"),
                  )),
            ],
          ),
          SizedBox(height: 30,),
          ProfilCard(Icon(Icons.person, color: rktext,), "Ad", "Erdal Enes Kara"),
          Container(
            margin: EdgeInsets.only(left: 53, top: 10),
            child: Row(
              children: [
                Flexible(child: Column(children: [Text("Bu, kullanıcı adınız ya da anahtarınız değildir. Bu ad WhatsApp kişileriniz tarafından görülebilir.", style: stytxt2,)],)),
              ],
            ),
          ),
          Container(margin: EdgeInsets.only(left: 53, top: 16, bottom: 16) ,width: double.infinity, height: 1, color: rkappbar,),
          ProfilCard(Icon(Icons.info, color: rktext,), "Hakkımda", "data..."),
          Container(margin: EdgeInsets.only(left: 53, top: 16, bottom: 16) ,width: double.infinity, height: 1, color: rkappbar,),
          ProfilCard(Icon(Icons.email, color: rktext,), "Email", "data@data.com"),
        ],
      ),
    );
  }
}
