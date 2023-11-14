import 'package:flutter/material.dart';

import 'package:music_app/widgets/bottom_navigation_bar.dart';
import 'package:music_app/widgets/relaxed_playlist.dart';
import 'package:music_app/widgets/search_bar.dart';
import 'package:music_app/widgets/your_favorite.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      body:
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              children: [
                const SearchBarWid(),
                Row(
                  children: [
                    //yellow your top 2023
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
                      child: Container(
                        width: 200,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(255, 231, 19, 1.0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                              'Your Top 2023',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    //black rock
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 25, top: 25),
                      child: Container(
                        width: 130,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                              'ROCK',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    //indie
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 8, top: 25),
                      child: Container(
                        width: 135,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                              'INDIE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    //metal
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 8, top: 25),
                      child: Container(
                        width: 140,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Text(
                              'METAL',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 10, top: 25),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: const Center(
                            child: Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 15),
                    child: Text(
                      "YOUR FAVORITES",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
                const Yourfavorite(),
                // SizedBox(height: 175,),
                const Padding(
                  padding: EdgeInsets.only(left: 20,top: 8,bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text('RELAXED PLAYLIST',style: TextStyle(fontSize: 18,color: Colors.white),)),
                ),
                const RelaxedPlayList(),
              ],
            ),
          ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
