import 'package:flutter/material.dart';
import 'package:music_app/manager/ApiManager.dart';

import '../manager/model/Song.dart';

class SongListPage extends StatefulWidget {
  const SongListPage({super.key,required this.genre});
  final genre;

  @override
  State<SongListPage> createState() => _SongListPageState();
}

class _SongListPageState extends State<SongListPage> {

  ApiManager apiManager = ApiManager();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 40, 0.8),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title:  Column(
          children: [
            Text(
              widget.genre,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_sharp)),
        ],
      ),
      body: FutureBuilder<List<Song>>(
          future: apiManager.fetchSongsByGenre(widget.genre),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Text("Loading");
            }else if(snapshot.hasError){
              return Text("error");
            }else if(snapshot.data!.isEmpty || !snapshot.hasData){
              return Text("Either data is empty or doesnt have only");
            }else{
              return ListView.builder(
                itemCount: snapshot.data!.length,
                  itemBuilder: (context,index){
                return ListTile(

                  title: Text(snapshot.data![index].songName,style: TextStyle(color: Colors.white),),
                  leading: Icon(Icons.music_note,color: Colors.white),
                  subtitle: Text(snapshot.data![index].artistName,style: TextStyle(color: Colors.white54),),
                  trailing: IconButton(
                    onPressed: (){},
                      icon: Icon(snapshot.data![index].favourite ? Icons.favorite : Icons.favorite_border_outlined,color: Colors.white,)) ,
                );
              });
            }
          }
      ),
    );
  }
}
