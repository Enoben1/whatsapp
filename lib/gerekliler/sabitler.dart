import 'package:flutter/material.dart';
import 'package:whatsapp/AyarlarSayfaları/Sohbetler.dart';

bool isDarkMode = true;

Color rktext = isDarkMode?Color.fromRGBO(159, 165, 172, 1.0):Color.fromRGBO(208,223,222, 1.0);
Color rktext2 = isDarkMode?Color.fromRGBO(214, 222, 225,1):Color.fromRGBO(0, 0, 0, 1);
Color rkappbar = isDarkMode?Color.fromRGBO(35,45,54,1):Color.fromRGBO(0,137,123,1);
Color rkpopupmenu = isDarkMode?Color.fromRGBO(32,47,56,1):Color.fromRGBO(240, 240, 240, 1);
Color rkbackground = isDarkMode?Color.fromRGBO(16, 29, 37, 1):Color.fromRGBO(250, 250, 250, 1);
Color rkwhatsappGreen = Color.fromRGBO(	18, 140, 126, 1);

TextStyle stytxt = TextStyle(color: rktext, fontSize: 16);
TextStyle stytxt2 = TextStyle(color: rktext, fontSize: 15);
TextStyle stynametxt = TextStyle(color: rktext2, fontSize: 18, fontWeight: FontWeight.bold);
TextStyle stypopupmenutxt = TextStyle(color: rktext2, fontSize: 16);