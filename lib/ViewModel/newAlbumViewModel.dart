import 'package:api_task1/Model/API_Model.dart';

class NewsAlbumViewMode{

  Album newAlbum;
  NewsAlbumViewMode({this.newAlbum});

  String get title{
    return newAlbum.title;
  }

  int get id{
    return newAlbum.id;
  }
  int get userid{
    return newAlbum.userId;
  }
}