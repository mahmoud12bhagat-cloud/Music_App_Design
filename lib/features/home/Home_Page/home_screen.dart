import 'package:flutter/material.dart';
import 'package:flutter_music_app/features/home/Home_Page/customerHomePage/custom_home_page.dart';
import 'package:flutter_music_app/res/colors_manager.dart';
import 'package:flutter_music_app/res/height_and_width_value.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool isFavorite = false;
int iconIndex = 0;
List<dynamic> favoriteList = List.filled(recommendedSongs.length, false);

List<Map> collectionList = [
  {
    "img": "assets/images/selena-gomez.png",
    "title": "Who Says",
    "Songer": "selena Gomez",
  },
  {
    "img": "assets/images/Justin-bieber.png",
    "title": "sORRY",
    "Songer": "Justin Baber",
  },
  {
    "img": "assets/images/alan-walker.png",
    "title": "Sing Me To Sleep",
    "Songer": "Alan Walker",
  },
];

List<Map> recommendedSongs = [
  {
    "img": "assets/images/DJ SNAKE.png",
    "title": "magenta riddim",
    "singer": "Dj Snake",
  },
  {
    "img": "assets/images/Mask group.png",
    "title": "Alone",
    "singer": "marshmello",
  },
  {
    "img": "assets/images/Mask group1.png",
    "title": "NEW RULES",
    "singer": "Dua Lipa",
  },
  {
    "img": "assets/images/anne-marie.png",
    "title": "Friends",
    "singer": "Anne Marie",
  },
  {
    "img": "assets/images/taylor-swift.png",
    "title": "you belong with me",
    "singer": "taylor swift",
  },
];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff411F5C), Color(0xff261F5C)],
          ),
        ),
        // color: Colors.blue,
        width: double.infinity,
        // height: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50, bottom: 30, left: 30, right: 30),
              decoration: BoxDecoration(
                color: ColorsManager.textFieldColor,
                borderRadius: BorderRadius.circular(60),
              ),

              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, color: ColorsManager.white),
                  hintText: "Search Songs",
                  hintStyle: TextStyle(
                    fontFamily: "Orbitron",
                    color: ColorsManager.white,
                  ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  textAlign: TextAlign.left,
                  "Recently Played",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Orbitron",
                    color: ColorsManager.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "PlayMusic",arguments: {});
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 150,
                            height: 150,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                fit: BoxFit.cover,
                                image: AssetImage(collectionList[index]["img"]),
                              ),
                            ),
                          ),
                          Text(
                            collectionList[index]["title"],
                            style: TextStyle(
                              fontFamily: "Orbitron",
                              color: ColorsManager.white,
                            ),
                          ),
                          Text(
                            collectionList[index]["Songer"],
                            style: TextStyle(
                              fontFamily: "Orbitron",
                              color: ColorsManager.white,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemCount: collectionList.length,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, bottom: 20),
              child: Text(
                textAlign: TextAlign.left,
                "Recommanded music",
                style: TextStyle(
                  fontFamily: "Orbitron",
                  color: ColorsManager.white,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: recommendedSongs.length,

                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(recommendedSongs[index]["img"]),
                    ),
                    title: Text(
                      recommendedSongs[index]["title"],
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        color: ColorsManager.white,
                      ),
                    ),
                    subtitle: Text(
                      recommendedSongs[index]["singer"],
                      style: TextStyle(
                        fontFamily: "Orbitron",
                        color: ColorsManager.white,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          favoriteList[index] = !favoriteList[index];
                        });
                      },
                      icon: Icon(
                        Icons.favorite_border,
                        color: favoriteList[index]
                            ? Colors.red
                            : ColorsManager.white,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
