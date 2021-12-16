import 'package:api_task1/Resources/ImageConstants.dart';
import 'package:api_task1/ViewModel/newAlbumListViewModel.dart';
import 'package:api_task1/ViewModel/newAlbumViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AlbumWidget extends StatelessWidget {
  final NewsAlbumViewMode albumViewMode;
  const AlbumWidget({ Key key, this.albumViewMode}):super(key: key);
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsAlbumListViewModel>(context);
    return Padding(padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10,
          color: Colors.purple.shade100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(ImageAssets.ImageBuilder,height: 90,width: 90,),
              title: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Center(child: Text((albumViewMode.title),style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                ),
              ),
              trailing: Icon(Icons.ac_unit),

            ),
          ),
        )
    );
  }
}