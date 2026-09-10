import 'package:flutter/material.dart';

class SpalchScreen extends StatelessWidget {
  const SpalchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff411F5C), Color(0xff261F5C).withOpacity(0.54)],
          ),
        ),
        child: Center(
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/music.png"),
          ),
        ),
      ),
    );
  }
}
