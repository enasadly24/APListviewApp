import 'package:api_task1/ViewModel/newAlbumListViewModel.dart';
import 'package:api_task1/app/app.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MaterialApp(
    home: new App(),
  ));
}
class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>NewsAlbumListViewModel(),
      child: MyApp(),
    );
  }
}