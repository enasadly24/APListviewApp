import 'package:api_task1/Resources/Routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
MyApp._internal(); //private named constructor
int appState=0; //single instance
static final MyApp instance =MyApp._internal();
factory MyApp()=>instance;
  @override
  _MyAppState createState() => _MyAppState(); // contain value of named constructor

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routesgenerator.getRoute,
      initialRoute: Routes.ButtonPage,
    );
  }
}
