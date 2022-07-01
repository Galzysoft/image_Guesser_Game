import 'package:flutter/material.dart';
import 'package:image_guesser/homePage.dart';


import 'game.dart';

void main() {
  runApp(
      MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    // home: HomePage(),
        initialRoute: "/home",
    // routes: {
    //   "/home":(context)=>HomePage(),
    //   "/game":(context)=>Game()
    // },
    //     routes:{} method this is same as onGenerateRoute method
        // but  in onGenerateRoute method  you can pass a parameter with it
        onGenerateRoute: ( routeSettings){
    String? current_route = routeSettings.name;
    final passed_value= routeSettings.arguments;
    print("my curent route is = $current_route");
    print("my pased value is = $passed_value");
   if(current_route=="/home"){
     return MaterialPageRoute(builder: (context) =>HomePage() ,);
   }
    if(current_route=="/game"){
      return MaterialPageRoute(builder: (context) =>Game(arg:passed_value) ,);
    }
    else{
    return null;}
      },
    // initialRoute: "/home",

    // routes: {
    //   "/home": (context) => HomePage(),
    //   // "/calculator": (context) => calculatorMain(),
    // },
    // onGenerateRoute: (settings) {
    //   final arg = settings.arguments;
    //   if (settings.name == "/game") {
    //     return MaterialPageRoute(
    //         builder: (context) => Game(
    //               name: "${arg}",
    //             ));
    //   }
    //   return null;
    // },
    debugShowCheckedModeBanner: false,
  )
  );
}
