import 'package:api_task1/View/UI/Pages/Album_Widget.dart';
import 'package:api_task1/ViewModel/newAlbumListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewAlbum extends StatefulWidget {
  const NewAlbum({Key key}) : super(key: key);

  @override
  _NewAlbumState createState() => _NewAlbumState();
}

class _NewAlbumState extends State<NewAlbum> {
  @override
  void initState(){
    super.initState();
    Provider.of<NewsAlbumListViewModel>(context,listen: false).populateTopHeadLine();
  }
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsAlbumListViewModel>(context);
    return Scaffold(
        appBar: AppBar(
          title: Text("Top Albums"),
        ),
        body: ListView.builder(
              itemCount: vm.albums.length,
              itemBuilder: (context,index){
                return AlbumWidget(albumViewMode:vm.albums[index]);
              }),
    );
  }

}
