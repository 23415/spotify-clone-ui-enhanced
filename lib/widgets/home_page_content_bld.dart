import 'package:flutter/material.dart';

class HomePageContentBuilder extends StatelessWidget {
  const HomePageContentBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,top: 8,right: 20,bottom: 10),
      child: Container(
        height: 120,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (buildContext, index){
            return Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                clipBehavior: Clip.hardEdge,
                child: Stack(
                  children: [
                    Container(
                        decoration: const BoxDecoration(
                        ),
                        clipBehavior: Clip.hardEdge,
                        child: const Image(image: AssetImage('assets/images/playlist_img.jpg'),
                          fit: BoxFit.cover,)
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: 120,
                        height: 45,
                        color: const Color.fromRGBO(
                            45, 42, 42, 0.6),
                        child: const Center(child: Text('Artist Name',style: TextStyle(fontSize: 15,color: Colors.white),),),),
                    ),
                  ],
                ),
              ),
            );
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );;
  }
}
