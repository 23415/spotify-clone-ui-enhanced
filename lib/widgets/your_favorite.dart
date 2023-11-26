import 'package:flutter/material.dart';

import 'package:music_app/screens/error_page.dart';

import '../manager/ApiManager.dart';
import '../manager/model/Artist.dart';

class Yourfavorite extends StatefulWidget {
   Yourfavorite({super.key});

  @override
  State<Yourfavorite> createState() => _YourfavoriteState();
}

class _YourfavoriteState extends State<Yourfavorite> {
  ApiManager apiManager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return  FutureBuilder<List<Artist>>(
      future: apiManager.fetchArtists(),
      builder: (context,snapshot){
        if(snapshot.connectionState==ConnectionState.waiting){
          return CircularProgressIndicator();
        }else if(snapshot.hasError || !snapshot.hasData || snapshot.data!.isEmpty){
          return const CircularProgressIndicator();
        }else{
          return Padding(
            padding: const EdgeInsets.only(left: 20,top: 16,right: 20,bottom: 10),
            child: Container(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (buildContext, index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          Container(
                              decoration: const BoxDecoration(
                              ),
                              height: 200,
                              width: 200,
                              clipBehavior: Clip.hardEdge,
                              child:  Image(image: AssetImage('assets/images/playlist_img.jpg'),
                                fit: BoxFit.cover,)
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 200,
                              height: 80,
                              color: const Color.fromRGBO(
                                  45, 42, 42, 0.6),
                              child:  Center(child: Text(snapshot.data![index].artistName,style: TextStyle(fontSize: 25,color: Colors.white),),),),
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
          );
        }
      },
    );
  }
}


