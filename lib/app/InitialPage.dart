import 'package:api_task1/Resources/Routes.dart';
import 'package:flutter/material.dart';
class InitialPage extends StatefulWidget {
  const InitialPage({Key key}) : super(key: key);

  @override
  _InitialPageState createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
        child: RaisedButton(
          color: Colors.blueAccent,
          onPressed: (){
            Navigator.pushReplacementNamed(context, Routes.ApIlistPage);
         },child: Text("API List",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),),
    ));
  }
}
