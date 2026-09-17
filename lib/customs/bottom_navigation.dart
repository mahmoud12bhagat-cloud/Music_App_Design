import 'package:flutter/material.dart';
import 'package:flutter_music_app/res/colors_manager.dart';
import 'package:flutter_music_app/controller/main_home_controller.dart';

class BottomNavigation extends StatelessWidget {
  final ValueChanged onTap;
  final int index;
  BottomNavigation({super.key, required this.onTap, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,

      selectedItemColor: Color(0xff854F9F),
      unselectedItemColor: ColorsManager.white,
      currentIndex: index,
      onTap: onTap,
      backgroundColor: Color(0xff261F44),
      type: BottomNavigationBarType.fixed,
      items: [
        for (int i = 0; i < MainHomeController.homeIcons.length; i++)
          BottomNavigationBarItem(
            icon: MainHomeController.homeIcons[i],
            label: "",
            // backgroundColor: Colors.blue,
          ),
      ],
    );
  }
}
