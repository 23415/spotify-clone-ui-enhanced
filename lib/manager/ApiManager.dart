import 'dart:convert';
import 'package:http/http.dart' as http;
import '../manager/model/Artist.dart';

class ApiManager{

  bool isLoading = true;

  Future<List<Artist>> fetchArtists() async {
    final response = await http.get(Uri.parse('http://10.0.2.2:8080/artists'));

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
}