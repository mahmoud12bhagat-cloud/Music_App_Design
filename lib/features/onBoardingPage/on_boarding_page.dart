import 'package:flutter/material.dart';
import 'package:flutter_music_app/res/colors_manager.dart';
import 'package:flutter_music_app/res/height_and_width_value.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorsManager.firstPrimaryColor,
                ColorsManager.secondPrimaryColor,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                textAlign: TextAlign.center,
                "Find Your \n Favorite",
                style: TextStyle(
                  fontFamily: "Orbitron",
                  fontSize: HeightValue.h30,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.white,
                ),
              ),
              Text(
                "Music",
                style: TextStyle(
                  fontFamily: "Orbitron",
                  fontSize: HeightValue.h30,
                  fontWeight: FontWeight.bold,
                  color: ColorsManager.babyBlue,
                ),
              ),
              SizedBox(height: 10),
              Text(
                textAlign: TextAlign.center,
                "Find Your Latest Favourite Music\nFrom Our Collection",
                style: TextStyle(
                  color: ColorsManager.white,
                  fontSize: 15,
                  fontWeight: FontWeight(500),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: HeightValue.h60,
                  width: WidthValue.h171,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [Color(0xff3097C5), Color(0xffFFFFFF)],
                    ),
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    "Get Started",
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorsManager.white,
                      fontWeight: FontWeight(500),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/guy_listen.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
