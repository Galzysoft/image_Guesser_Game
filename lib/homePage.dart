import 'package:flutter/material.dart';
import 'package:image_guesser/game.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool canshow=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HomePage")),
      body: Center(
          child:canshow==true? Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => Game(name: "ada",age: "obi"),));
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => Game(name: "ada"),
              //     ));
            },
            child: Text(canshow?"ewoooo":"Navigate .push"),
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
              Map <String,dynamic>  passed_values={"name":"obi","age":"15"};
              Navigator.pushNamed(context, "/game",arguments:passed_values );
              // Navigator.pushNamed(context, "/game",arguments: ["ben","obi"],);
            },
            child: Text("Navigate .pushNamed"),
          ),
        //    Navigator.popUntil(context, ModalRoute.withName('/login'));
        //    Navigator.pushNamedAndRemoveUntil(context, '/calendar', ModalRoute.withName('/'));
        ],
      ):Text("omor e don cast")),
    );
  }
}
