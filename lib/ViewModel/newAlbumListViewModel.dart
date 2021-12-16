import 'package:api_task1/Model/API_Model.dart';
import 'package:api_task1/Network/APIChecker.dart';
import 'package:api_task1/ViewModel/newAlbumViewModel.dart';
import 'package:flutter/cupertino.dart';

class NewsAlbumListViewModel extends ChangeNotifier{
  List<NewsAlbumViewMode> albums= List<NewsAlbumViewMode>();
  NewsAlbumListViewModel(){
    populateTopHeadLine();
  }
  Future<void> populateTopHeadLine() async{
    List<Album>newsAlbums= await API_Manager().getAlbums();
    this.albums= newsAlbums.map((article) => NewsAlbumViewMode(newAlbum:article)).toList();
    notifyListeners();
  }
}