import 'package:flutter/material.dart';
import 'package:flutter_music_app/features/home/Home_Page/home_screen.dart';
import 'package:flutter_music_app/res/colors_manager.dart';

class MainHomeController {
  static List<Icon> homeIcons = [
    Icon(Icons.house_outlined),
    Icon(Icons.favorite_border_outlined),
    Icon(Icons.menu),
    Icon(Icons.settings),
  ];
  static List<Widget> homePage = [
    // Scaffold(body: Center(child: Text("house_outlined"))),
    HomeScreen(),
    Scaffold(body: Center(child: Text("favorite_border_outlined"))),
    Scaffold(body: Center(child: Text("menu"))),
    Scaffold(body: Center(child: Text("settings"))),
  ];
}
