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
                    child: Container(
                      child: GestureDetector(
                        onTap: (){
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  AlertDialog(
                                    content: Column(
                                      children: [
                                        SizedBox(height: 25,),
                                        Stack(children: [Container(width: 250, height: 250 ,child: Image.asset(('Resimler/Kisiler/' + text + ".JPG"), fit: BoxFit.cover,)),Container(child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(text, style: TextStyle(color: rktext2, fontSize: 16),),
                                        ), width: double.infinity, color: Colors.black12.withOpacity(0.25),),]),
                                        Container(width: double.infinity ,color: rkappbar ,child:Padding(
                                          padding: const EdgeInsets.only(top: 12, bottom: 12),
                                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround ,children: [Icon(Icons.comment, color: rkwhatsappGreen,),Icon(Icons.call, color: rkwhatsappGreen,),Icon(Icons.videocam, color: rkwhatsappGreen,),Icon(Icons.info, color: rkwhatsappGreen,),],),
                                        ))
                                      ],
                                    ),
                                    actions: <Widget>[
                                    ],
                                    backgroundColor: Colors.transparent,
                                  ),
                                  SizedBox(),
                                  SizedBox(),
                                  SizedBox(),
                                ],
                              ));
                          },
                        child: CircleAvatar(
                          backgroundColor: Colors.blueGrey,
                          backgroundImage: AssetImage(('Resimler/Kisiler/' + text + ".JPG")),
                          /*child: Icon(Icons.person, size: avatarsize*1.6,),*/
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(decoration: BoxDecoration(shape: BoxShape.circle, color: isSelected?rkbackground:Colors.transparent,) ,child: Icon(Icons.check_circle, color: isSelected?rkwhatsappGreen:Colors.transparent,)),
                                ],
                              ),
                            ],
                          ),
                          radius: avatarsize,
                        ),
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
                    Text(text, style: TextStyle(color: rktext2, fontSize: 16),),
                    Visibility(visible: text2!=""?true:false ,child: Text(text2, style: TextStyle(color: rktext, fontSize: 13),))
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


