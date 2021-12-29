import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        children: [],
      ),
    );
  }
}
