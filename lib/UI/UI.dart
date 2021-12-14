import 'package:api_task1/Data/API_Model.dart';
import 'package:api_task1/Network/APIChecker.dart';
import 'package:flutter/material.dart';
class UiListView extends StatefulWidget {
  const UiListView({Key? key}) : super(key: key);

  @override
  _UiListViewState createState() => _UiListViewState();
}

class _UiListViewState extends State<UiListView> {
  late Future<List<Album>>futureAlbum;
  @override
  void initState(){
    super.initState();
    futureAlbum= API_Manager().getAlbums() ;
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fixed Misr"),),
      body: FutureBuilder<List<Album>>(
        future: futureAlbum,
        builder: (context,snapshot){
          if(snapshot.hasData){
            return ListTileTheme(
              contentPadding: EdgeInsets.all(15),textColor: Colors.black54,
              tileColor: Colors.blueAccent,
              style: ListTileStyle.list,
              dense: true,

              child: ListView.builder(
                 itemCount: snapshot.data!.length,
                  itemBuilder:(context,index){
                   return Card(
                     margin: EdgeInsets.all(10),
                     child: ListTile(
                       title: Text("${snapshot.data![index].title}"),
                     ),
                   );
                  }),
            );
          }else {
            return Center(child: CircularProgressIndicator());
          }
        },
      )
    );
  }
}
