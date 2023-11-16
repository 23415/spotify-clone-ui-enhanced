import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';

class SongDetailScreen extends StatefulWidget {
  const SongDetailScreen({super.key});

  @override
  State<SongDetailScreen> createState() => _SongDetailScreenState();
}

class _SongDetailScreenState extends State<SongDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_downward_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Column(
          children: [
            Text(
              'PLAYING FROM PLAYLIST',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            Text(
              'Your Favorite',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 35, right: 35, top: 85),
              child: SizedBox(
                width: 350,
                height: 300,
                child: Image(
                    image: AssetImage('assets/images/playlist_img.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35, top: 55),
                  child: Text(
                    'Indian X Let Me Down Slowly\nROSARYO',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 65,
                    top: 55,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 35, top: 20, right: 35),
              child: ProgressBar(
                progress: Duration(minutes: 1),
                total: Duration(minutes: 3),
                progressBarColor: Colors.white,
                baseBarColor: Colors.black12,
                thumbColor: Colors.white,
                barHeight: 2,
                thumbRadius: 5,
                timeLabelTextStyle: TextStyle(color: Colors.white38),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0, right: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.play_circle_filled,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 8),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat_sharp,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 190),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.speaker_group_outlined,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 10, right: 0),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 6,
                    top: 10,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.view_headline_sharp,
                      size: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Container(
              width: 350,
              height: 300,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              clipBehavior: Clip.hardEdge,
              child: const Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/playlist_img.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 15),
                    child: Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      child: Text(
                        'About the artist',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
