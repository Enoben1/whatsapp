import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

class MessageCard extends StatelessWidget {
  MessageCard(this.fonksiyon, this.text, this.resim);

  final Function fonksiyon;
  final text;
  final resim;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                  child: CircleAvatar(
                    backgroundImage: AssetImage('Resimler/Kisiler/' + resim + ".jpg"),
                    radius: 30,
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
              )
            ],
          ),
      ),
    );
  }
}
