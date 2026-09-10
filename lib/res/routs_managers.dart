import 'package:flutter/widgets.dart';
import 'package:flutter_music_app/features/home/home_screen.dart';
import 'package:flutter_music_app/features/onBoardingPage/on_boarding_page.dart';
import 'package:flutter_music_app/features/splach/spalch_screen.dart';

class RoutsManagers {
  static Map<String, WidgetBuilder> routes = {
    "${RoutesName.spalchScreen}": (context) => SpalchScreen(),
    "${RoutesName.homeScreen}": (context) => HomeScreen(),
    "${RoutesName.onBoardingPage}": (context) => OnBoardingPage(),
  };
}

class RoutesName {
  static String spalchScreen = "SpalchScreen";
  static String homeScreen = "HomeScreen";
  static String onBoardingPage = "OnBoardingPage";
}
