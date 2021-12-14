import 'dart:convert';

import 'package:api_task1/Data/API_Model.dart';
import 'package:api_task1/Network/APIurl.dart';
import 'package:http/http.dart' as http;

class API_Manager {
  Future<List<Album>> getAlbums() async {
    var response = await http.get(Uri.parse(BaseUrl.album_url));
    if (response.statusCode == 200) {
      final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
      return parsed.map<Album>((json) => Album.fromJson(json)).toList();
    } else {
      throw Exception("Failed to Load album");
    }
  }
}
