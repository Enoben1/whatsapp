import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'gerekliler/sabitler.dart';

class MessagePage extends StatefulWidget {
  MessagePage(this.Nametext);

  final Nametext;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  List<String> sendingMsg = [];
  TextEditingController eCTRL = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: rkbackground,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: rkappbar,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              splashRadius: 30,
            ),
            CircleAvatar(
              backgroundImage:
                  AssetImage('Resimler/Kisiler/' + widget.Nametext + ".jpg"),
              radius: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              widget.Nametext,
              style: TextStyle(color: rktext2, fontSize: 14),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.videocam,
                    color: rktext2,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.call,
                    color: rktext2,
                  )),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: rktext2,
                  ),
                  color: rkappbar,
                  itemBuilder: (context) => [
                        PopupMenuItem(
                            child: Text(
                          "Kişiyi güncelle",
                          style: stypopupmenutxt,
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Medya, bağlantılar ve belgeler",
                          style: stypopupmenutxt,
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Ara",
                          style: stypopupmenutxt,
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Bildirimleri sessize al",
                          style: stypopupmenutxt,
                        )),
                        PopupMenuItem(
                            child: Text(
                          "Duvar kağıdı",
                          style: stypopupmenutxt,
                        )),
                        PopupMenuItem(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Diğer",
                              style: stypopupmenutxt,
                            ),
                            Icon(Icons.arrow_right)
                          ],
                        )),
                      ])
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
              flex: 10,
              child: ListView.builder(
                  itemCount: sendingMsg.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                shape: BoxShape.rectangle,
                                color: rkwhatsappGreen),
                            margin: EdgeInsets.all(10),
                            child: Container(
                                margin: EdgeInsets.all(7),
                                child: Flexible(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        sendingMsg[index].toString(),
                                        style: TextStyle(
                                            color: rktext2, fontSize: 15),
                                      ),
                                    ],
                                  ),
                                ))),
                      ],
                    );
                  })),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Container(
                        color: rkpopupmenu,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                margin: EdgeInsets.all(7.5),
                                child: Icon(
                                  Icons.emoji_emotions,
                                  size: 26,
                                  color: rktext,
                                )),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: TextField(
                                      controller: eCTRL,
                                      cursorColor: rkwhatsappGreen,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        enabledBorder: InputBorder.none,
                                        errorBorder: InputBorder.none,
                                        disabledBorder: InputBorder.none,
                                        hintText: "Mesaj",
                                        hintStyle: TextStyle(
                                            color: rktext.withOpacity(0.75),
                                            fontSize: 16),
                                      ),
                                      style: TextStyle(color: rktext2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.all(7.5),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.attach_file,
                                      size: 26,
                                      color: rktext,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.photo_camera,
                                      size: 26,
                                      color: rktext,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (eCTRL.text != "") {
                              sendingMsg.add(eCTRL.text);
                              eCTRL.clear();
                            }
                          });
                        },
                        child: Icon(
                          Icons.play_arrow,
                          color: rktext2,
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                          padding: EdgeInsets.all(12),
                          primary: rkwhatsappGreen, // <-- Button color
                          onPrimary: rkwhatsappGreen, // <-- Splash color
                        ),
                      )),
                ],
              )),
          SizedBox(
            height: 3,
          )
        ],
      ),
    );
  }
}
