import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key, this.name}) : super(key: key);
final name;
  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
      final canExit= await  showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text("Exit Dialog"),
                content: SizedBox(
                  height: 50,
                  width: 150,
                  child: Text(
                    "Do you want to Exit",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                actions: [
                  ElevatedButton(onPressed: () {
Navigator.pop(context,true);
                }, child: Text("yes")),
                  ElevatedButton(onPressed: () {
Navigator.pop(context,false);
                  }, child: Text("No"))],
              );
            });

        return canExit!;
      },
      child: Scaffold(
        appBar: AppBar(title: Text("${widget.name}")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                bool can_pop = Navigator.canPop(context);
                Navigator.maybePop(context);
                if (can_pop) {
                  Navigator.pop(context);
                } else {
                  print("you can't pop");
                }
              },
              child: Text("Navigate Back"),
            ),
            ElevatedButton(
              onPressed: () {
                bool can_pop = Navigator.canPop(context);
                print(can_pop);
                // Navigator.pop(context);
              },
              child: Text("check if i can pop"),
            ),
          ],
        )),
      ),
    );
  }
}
