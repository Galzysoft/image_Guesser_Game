import 'package:flutter/material.dart';
import 'package:image_guesser/homePage.dart';


import 'game.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.brown),
    // home: HomePage(),
    initialRoute: "/calculator",
    routes: {
      "/home": (context) => HomePage(),
      // "/calculator": (context) => calculatorMain(),
    },
    onGenerateRoute: (settings) {
      final arg = settings.arguments;
      if (settings.name == "/game") {
        return MaterialPageRoute(
            builder: (context) => Game(
                  name: "${arg}",
                ));
      }
      return null;
    },
    debugShowCheckedModeBanner: false,
  ));
}
