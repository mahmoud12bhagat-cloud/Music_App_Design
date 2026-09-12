import 'package:flutter/material.dart';
import 'package:flutter_music_app/res/routs_managers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RoutsManagers.routes,
      initialRoute: RoutesName.onBoardingPage,
    );
  }
}
