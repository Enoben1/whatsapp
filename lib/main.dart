import 'package:flutter/material.dart';
import 'package:whatsapp/gerekliler/card.dart';
import 'package:whatsapp/gerekliler/sabitler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: rkbackground,
        appBar: AppBar(
          backgroundColor: rkappbar,
          title: Text(
            "WhatsApp",
            style: stytxt,
          ),
          actions: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: rktext,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert,
                      color: rktext,
                    ))
              ],
            )
          ],
        ),
        body: Column(
          children: [
            MessageCard((){}, "Erdal Enes Kara", "Enes"),
            MessageCard((){}, "Murat Bayrak", "Murat"),
            MessageCard((){}, "İmran", "İmran"),
          ],
        ), floatingActionButton: Icon(Icons.comment, color: rktext2,),);
  }
}
