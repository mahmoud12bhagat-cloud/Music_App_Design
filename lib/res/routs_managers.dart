import 'package:flutter/widgets.dart';
import 'package:flutter_music_app/features/home/home_screen.dart';
import 'package:flutter_music_app/features/onBoardingPage/on_boarding_page.dart';
import 'package:flutter_music_app/features/playMusic/play_music.dart';
import 'package:flutter_music_app/features/splach/spalch_screen.dart';

class RoutsManagers {
  static Map<String, WidgetBuilder> routes = {
    "${RoutesName.spalchScreen}": (context) => SpalchScreen(),
    "${RoutesName.mainhomeScreen}": (context) => MainHomeScreen(),
    "${RoutesName.onBoardingPage}": (context) => OnBoardingPage(),
    "${RoutesName.playMusic}": (context) => PlayMusic(),
  };
}

class RoutesName {
  static String spalchScreen = "SpalchScreen";
  static String mainhomeScreen = "MainHomeScreen";
  static String onBoardingPage = "OnBoardingPage";
  static String playMusic = "PlayMusic";
}
