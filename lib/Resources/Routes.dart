
import 'package:api_task1/UI/UI.dart';
import 'package:api_task1/app/InitialPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{
  static const String ApIlistPage="/";
  static const String ButtonPage="ButtonRoute";

}

class Routesgenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name)
    {
      case Routes.ApIlistPage:
        return MaterialPageRoute(builder: (_)=>UiListView());
      case Routes.ButtonPage:
        return MaterialPageRoute(builder: (_)=>InitialPage());
      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_)=>Scaffold(
      appBar: AppBar(
        title: Text("No Route Found"),
      ),
      body: Center(child: Text("No Routes Found")) ,
    ));
  }
}


