import 'package:button_slider/body.dart';
import 'package:button_slider/page404.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Button Slider",
        initialRoute: "/",
        routes: {
          "/": (context) => Body(),
          "/detail": (context) => MyApp(),
        },
        onGenerateRoute: (settings) {
          final List<String> pathElements = settings.name.split("/");
          if(pathElements[0] != '') return null;
          else if(pathElements[1] == 'button'){
            String buttonID = pathElements[2];
            return MaterialPageRoute(builder: (BuildContext context) => MyApp());
          }
        },
        onUnknownRoute: (settings){
          return MaterialPageRoute(builder: (BuildContext context) => Page404(title: "404 Error"));
        },
      );
    // return MultiProvider(
    //   providers: [
    //     // ChangeNotifierProvider(create: (_) => Provider()),
    //   ],
    //   child: MaterialApp(
    //     title: "Button Slider",
    //     initialRoute: "/",
    //     routes: {
    //       "/": (context) => Body(),
    //       "/detail": (context) => MyApp(),
    //     },
    //     onGenerateRoute: (settings) {
    //       final List<String> pathElements = settings.name.split("/");
    //       if(pathElements[0] != '') return null;
    //       else if(pathElements[1] == 'button'){
    //         String buttonID = pathElements[2];
    //         return MaterialPageRoute(builder: (BuildContext context) => MyApp());
    //       }
    //     },
    //     onUnknownRoute: (settings){
    //       return MaterialPageRoute(builder: (BuildContext context) => Page404(title: "404 Error"));
    //     },
    //   ),
    // );
  }
}