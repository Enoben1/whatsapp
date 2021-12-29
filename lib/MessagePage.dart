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
  bool isClickName = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode?rkbackground:Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: isDarkMode?rkappbar:rkwhatsappGreen,
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
                  AssetImage('Resimler/Kisiler/' + widget.Nametext + ".JPG"),
              radius: 18,
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (detail) => setState(() {
                  isClickName = true;
                }),
                onTapUp: (detail) => setState(() {
                  isClickName = false;
                }),
                onTapCancel: (){setState(() {
                  isClickName = false;
                });},
                child: Container(
                  height: 50,
                  color: !isClickName?Colors.transparent:Colors.grey.withOpacity(0.30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          widget.Nametext,
                          style: TextStyle(color: rktext2, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
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
              flex: 9,
              child: ListView.builder(
                  itemCount: sendingMsg.length,
                  itemBuilder: (BuildContext ctxt, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(24),
                      color: rkappbar),
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 7, right: 10),
                        child: Icon(
                          Icons.emoji_emotions,
                          size: 26,
                          color: rktext,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          onChanged: (text){setState(() {
                          });},
                          controller: eCTRL,
                          maxLines: null,
                          cursorColor: rkwhatsappGreen,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Mesaj",
                            hintStyle: TextStyle(
                                color: rktext.withOpacity(0.75), fontSize: 16),
                          ),
                          style: TextStyle(color: rktext2),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Icon(
                          Icons.attach_file,
                          size: 26,
                          color: rktext,
                        ),
                      ),
                      Visibility(
                        visible: eCTRL.text.length==0?true:false,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 7),
                          child: Icon(
                            Icons.photo_camera,
                            size: 26,
                            color: rktext,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (eCTRL.text != "") {
                      sendingMsg.add(eCTRL.text);
                      eCTRL.clear();
                    }
                  });
                },
                child: Icon(eCTRL.text.length==0?Icons.mic:Icons.play_arrow,
                  color: rktext2,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(12),
                  primary: rkwhatsappGreen, //
                  onPrimary: rkwhatsappGreen, //
                ),
              ),
            ],
          ),
          SizedBox(
            height: 3,
          ),
        ],
      ),
    );
  }
}
