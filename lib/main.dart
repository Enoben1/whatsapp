import 'package:flutter/material.dart';
import 'package:whatsapp/AyarlarSayfaları/Settings.dart';
import 'package:whatsapp/MessagePage.dart';
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
  List<String> listeisim = ["Erdal Enes Kara", "Alper Alp", "Görkem Buzdere"];
  List<bool> isSelectedlist = [false, false, false];
  List<String> listeisimfiltreli = ["Erdal Enes Kara", "Alper Alp", "Görkem Buzdere"];

  TextEditingController eCtrl = TextEditingController();
  TextEditingController eCtrl2 = TextEditingController();

  bool isClickedNewPersonBtn = false;
  bool isClickedSearchBtn = false;
  bool canLongPress = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkbackground,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: rkappbar,
        title: Column(
          children: [
            Visibility(
                visible: isClickedSearchBtn == true ? true : false,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isClickedSearchBtn = false;
                          eCtrl2.clear();
                          canLongPress = true;
                          setState(() {
                            listeisimfiltreli.clear();
                            for(var i = 0; i < listeisim.length; i++ ){
                              listeisimfiltreli.add(listeisim[i]);
                            }
                          });
                        });
                      },
                      icon: Icon(Icons.arrow_back),
                      color: rktext,
                    ),
                    Expanded(
                      child: TextField(
                        cursorColor: rkwhatsappGreen,
                        controller: eCtrl2,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: rkwhatsappGreen),
                          ),
                          hintText: "Ara...",
                          hintStyle: TextStyle(
                              color: rktext.withOpacity(0.75), fontSize: 16),
                        ),
                        style: TextStyle(color: rktext2),
                        onChanged: (string){
                          setState(() {
                            listeisimfiltreli.clear();
                            for(var i = 0; i < listeisim.length; i++ ){
                              listeisim[i].toLowerCase().contains(string)?listeisimfiltreli.add(listeisim[i]):"";
                            }
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Visibility(
              visible: isClickedSearchBtn == true ? false : true,
              child: Container(
                margin: EdgeInsets.only(left: 4, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "WhatsApp",
                      style: TextStyle(color: rktext, fontSize: 18),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isClickedSearchBtn = true;
                                canLongPress = false;
                              });
                            },
                            icon: Icon(
                              Icons.search,
                              color: rktext,
                            )),
                        PopupMenuButton(
                            color: rkpopupmenu,
                            icon: Icon(
                              Icons.more_vert,
                              color: rktext,
                            ),
                            itemBuilder: (context) => [
                                  PopupMenuItem(
                                    child: Text(
                                      "Yeni grup",
                                      style: stypopupmenutxt,
                                    ),
                                  ),
                                  PopupMenuItem(
                                    child: Text(
                                      "Yıldızlı mesajlar",
                                      style: stypopupmenutxt,
                                    ),
                                  ),
                                  PopupMenuItem(
                                    onTap: () async {
                                      final navigator = Navigator.of(context);
                                      await Future.delayed(Duration.zero);
                                      navigator.push(
                                        MaterialPageRoute(
                                            builder: (_) => SettingsPage()),
                                      );
                                    },
                                    child: Text(
                                      "Ayarlar",
                                      style: stypopupmenutxt,
                                    ),
                                  ),
                                  PopupMenuItem(
                                    onTap:(){setState(() {
                                      int counter = 0;
                                      while(counter < listeisim.length){
                                        if(isSelectedlist[counter] == true){
                                          isSelectedlist.removeAt(counter);
                                          listeisimfiltreli.removeAt(counter);
                                          listeisim.removeAt(counter);
                                          counter = 0;
                                        }
                                        else{
                                          counter++;
                                        }
                                      }
                                    });},
                                    child: Text(
                                      "Sil",
                                      style: stypopupmenutxt,
                                    ),
                                  ),
                                ]),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: isClickedSearchBtn == true ? false : true,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: Icon(
                      Icons.photo_camera,
                      color: rktext,
                      size: 21,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "SOHBETLER",
                          style: stytxt2,
                        ),
                        Text(
                          "DURUM",
                          style: stytxt2,
                        ),
                        Text(
                          "ARAMALAR",
                          style: stytxt2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
        actions: [],
      ),
      body: Column(
        children: [
          Visibility(
            visible: isClickedNewPersonBtn == true ? true : false,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), /*color: rkappbar*/
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "İsim: ",
                          style: stytxt,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: TextField(
                          cursorColor: rkwhatsappGreen,
                          controller: eCtrl,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: rkwhatsappGreen),
                            ),
                            hintText: "isim",
                            hintStyle: TextStyle(
                                color: rktext.withOpacity(0.75), fontSize: 16),
                          ),
                          style: TextStyle(color: rktext2),
                        )),
                        IconButton(
                            color: rkwhatsappGreen,
                            onPressed: () {
                              setState(() {
                                isClickedNewPersonBtn = false;
                                listeisim.add(eCtrl.text);
                                listeisimfiltreli.add(eCtrl.text);
                                isSelectedlist.add(false);
                                eCtrl.clear();
                              });
                            },
                            icon: Icon(Icons.arrow_forward, color: rktext2,))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
              child: ListView.builder(
                  itemCount: listeisimfiltreli.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return GestureDetector(onTap: () async{
                      final navigator = Navigator.of(context);
                      await Future.delayed(Duration.zero);
                      navigator.push(
                        MaterialPageRoute(
                            builder: (_) => MessagePage(listeisimfiltreli[index])),
                      );
                    } ,onLongPress: (){setState(() {
                      canLongPress? isSelectedlist[index] = !isSelectedlist[index]:"";
                    });} ,child: MessageCard(listeisimfiltreli[index], 24, isSelectedlist[index]));
                  })),
        ],
      ),
      floatingActionButton: SizedBox(
        width: 44,
        height: 44,
        child: FloatingActionButton(
          child: Icon(
            isClickedNewPersonBtn == false ? Icons.person_add : Icons.close,
            color: rktext2,
          ),
          hoverColor: rkwhatsappGreen.withOpacity(0.75),
          backgroundColor: rkwhatsappGreen,
          onPressed: () {
            setState(() {
              if(isClickedNewPersonBtn == true){
                eCtrl.clear();
                isClickedNewPersonBtn = false;
              }
              else if(isClickedNewPersonBtn == false){
                isClickedNewPersonBtn = true;
              }
              //isClickedNewPersonBtn = true;
            });
          },
        ),
      ),
    );
  }
}
