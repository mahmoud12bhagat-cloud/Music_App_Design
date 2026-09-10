import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_music_app/res/colors_manager.dart';
import 'package:flutter_music_app/res/height_and_width_value.dart';
import 'package:flutter_music_app/res/routs_managers.dart';

class CustomsContainerSplachScreen extends StatefulWidget {
  const CustomsContainerSplachScreen({super.key});

  @override
  State<CustomsContainerSplachScreen> createState() =>
      _CustomsContainerSplachScreenState();
}

bool isRunning = true;

class _CustomsContainerSplachScreenState
    extends State<CustomsContainerSplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.onBoardingPage);
    });
    // Future.delayed(Duration(seconds: 3), () {
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            ColorsManager.firstPrimaryColor,
            ColorsManager.secondPrimaryColor.withOpacity(0.54),
          ],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: HeightValue.h50,
            backgroundImage: AssetImage("assets/images/music.png"),
          ),
          SizedBox(height: 10),
          isRunning
              ? CircularProgressIndicator(color: Colors.grey)
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
