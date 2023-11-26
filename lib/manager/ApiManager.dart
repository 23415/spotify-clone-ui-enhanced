import 'dart:convert';
import 'package:http/http.dart' as http;
import '../manager/model/Artist.dart';
import 'model/Song.dart';

class ApiManager{

  bool isLoading = true;
  final url = 'http://10.0.2.2:8080';

  Future<List<Artist>> fetchArtists() async {
    final response = await http.get(Uri.parse('$url/artists'));

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> artistsData = data['_embedded']['artists'];

      // Map each dynamic item in the list to Artist objects
      final List<Artist> artists = artistsData
          .map((dynamic artistData) => Artist.fromJson(artistData))
          .toList();
      isLoading = false;
      return artists;
    } else {
      throw Exception('Failed to load artists');
    }
  }

  Future<List<Song>> fetchSongsByGenre(String genre) async {
    try {
      final response = await http.get(Uri.parse('$url/api/v1/songs/getSongsByGenre/$genre'));

      print('Request URL: ${response.request!.url}');
      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        // final List<dynamic> songData = data[genre];

        final List<Song> songs = data
            .map((dynamic data) => Song.fromJson(data))
            .toList();

        return songs;
      } else {
        throw Exception('Failed to load songs. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error hai ye: $e');
      throw Exception('Failed to load songs. Error: $e');
    }
  }

}