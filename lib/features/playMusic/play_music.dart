import 'package:flutter/material.dart';
import 'package:flutter_music_app/res/colors_manager.dart';

class PlayMusic extends StatefulWidget {
  const PlayMusic({super.key});

  @override
  State<PlayMusic> createState() => _PlayMusicState();
}

double val = 0.1;

class _PlayMusicState extends State<PlayMusic> {
  @override
  Widget build(BuildContext context) {
    // Map info = ModalRoute.of(context).!settings.arguments as Map;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: const Color.fromARGB(255, 213, 213, 213),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: ColorsManager.white,
                size: 30,
              ),
            ),
          ],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_left, color: ColorsManager.white, size: 30),
          ),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Now playing",
            style: TextStyle(
              fontFamily: "Orbitron",
              color: ColorsManager.white,
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff411F5C), Color(0xff261F5C)],
            ),
          ),
          // color: Colors.blue,
          width: double.infinity,
          // height: double.infinity,
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 140),
              Container(
                width: 148,
                height: 148,
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    width: 148,
                    height: 148,
                    "assets/images/alan-walker.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "NEW RULES",
                style: TextStyle(
                  fontFamily: "Orbitron",
                  color: ColorsManager.white,
                ),
              ),
              Text(
                "Dua Lipa",
                style: TextStyle(
                  fontFamily: "Orbitron",
                  color: ColorsManager.white,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shuffle,
                      color: ColorsManager.white,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      color: ColorsManager.white,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.pause_circle,
                      color: ColorsManager.white,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      color: ColorsManager.white,
                      size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.repeat_rounded,
                      color: ColorsManager.white,
                      size: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 6,
                  thumbShape: SliderComponentShape.noThumb,
                  activeTrackColor: const Color(0xffB8B4E8),
                  inactiveTrackColor: const Color(0xff2870A5),
                  overlayShape: SliderComponentShape.noOverlay,
                ),

                child: SizedBox(
                  width: 350,

                  child: Slider(
                    // inactiveColor: Colors.black,
                    // activeColor: Color(0xffB1AFE9),
                    // thumbColor: Colors.transparent,
                    value: val,
                    onChanged: (value) {
                      setState(() {
                        val = value;
                      });
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "3:03",
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        color: ColorsManager.white,
                      ),
                    ),
                    Text(
                      "4:23",
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
