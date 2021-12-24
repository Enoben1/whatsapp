import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class MessageCard extends StatelessWidget {
  MessageCard(this.text, this.avatarsize, this.isSelected);

  final text;
  final double avatarsize;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: GestureDetector(
                      child: CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        backgroundImage: AssetImage(('Resimler/Kisiler/' + text + ".jpg")),
                        child: Icon(Icons.person, size: avatarsize*1.6,),
                        radius: avatarsize,
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text, style: stynametxt,),
                      Text("data", style: stytxt,)
                    ],
                  ),
                ],
              ),
            ),
            Container(margin: EdgeInsets.all(10) ,child: Icon(Icons.check_circle_outline, color: isSelected?rkwhatsappGreen:Colors.transparent,)),
          ],
        ),
    );
  }
}


class SettingCard extends StatelessWidget {
  SettingCard(this.fonksiyon, this.icon , this.text, this.text2);

  final Function fonksiyon;
  final Icon icon;
  final text;
  final text2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: fonksiyon(),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: GestureDetector(
                  child: icon,
                ),
              ),
              SizedBox(width: 10,),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text, style: TextStyle(color: rktext2, fontSize: 15),),
                    Text(text2, style: TextStyle(color: rktext, fontSize: 13),)
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}

class ProfilCard extends StatelessWidget {
  ProfilCard(this.icon , this.text, this.text2);

  final Icon icon;
  final text;
  final text2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: GestureDetector(
              child: icon,
            ),
          ),
          SizedBox(width: 10,),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(text, style: TextStyle(color: rktext, fontSize: 13),),
                Text(text2, style: TextStyle(color: rktext2, fontSize: 15),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
