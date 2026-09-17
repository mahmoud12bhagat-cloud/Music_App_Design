import 'package:flutter/material.dart';
import 'package:flutter_music_app/controller/main_home_controller.dart';
import 'package:flutter_music_app/customs/bottom_navigation.dart';
import 'package:flutter_music_app/res/colors_manager.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

int index = 0;

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainHomeController.homePage[index],
      bottomNavigationBar: BottomNavigation(
        index: index,

        onTap: (value) {
          setState(() {
            index = value;
          });
        },
      ),
    );
  }
}
