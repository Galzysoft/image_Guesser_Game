import 'package:flutter/material.dart';
import 'package:image_guesser/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Game(),
                  ));
            },
            child: Text("Navigate .push"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Game(),
                  ));
            },
            child: Text("Navigate .pushReplacement"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/game",arguments: ["ben","obi"],);
            },
            child: Text("Navigate .pushNaED"),
          ),
        ],
      )),
    );
  }
}
