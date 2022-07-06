import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key, this.arg}) : super(key: key);

  final arg;
  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {

  @override
  Widget build(BuildContext context) {
    String name =widget.arg["name"];
    String age =widget.arg["age"];
    return WillPopScope(
      onWillPop: () async {
    bool exit=   await  showDialog(
            context: context,
            builder: (context) {
              return  AlertDialog(
                title: Text("Exit app"),
                content: Text("Do you want to Exit app"),
                actions: [
                  ElevatedButton(onPressed: () {
                    Navigator.pop(context,true);
                  }, child: Text("Yes")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context,false);
                      },
                      child: Text("No"))
                  //    Navigator.popUntil(context, ModalRoute.withName('/login'));
                  //    Navigator.pushNamedAndRemoveUntil(context, '/calendar', ModalRoute.withName('/'));

                ],
              );
            });
    print ("my exit command is $exit");
    setState((){});
        return exit;
      },

//           () async {
// //       final canExit= await  showDialog<bool>(
// //             context: context,
// //             builder: (context) {
// //               return AlertDialog(
// //                 title: Text("Exit Dialog"),
// //                 content: SizedBox(
// //                   height: 50,
// //                   width: 150,
// //                   child: Text(
// //                     "Do you want to Exit",
// //                     style: TextStyle(color: Colors.black),
// //                   ),
// //                 ),
// //                 actions: [
// //                   ElevatedButton(onPressed: () {
// // Navigator.pop(context,true);
// //                 }, child: Text("yes")),
// //                   ElevatedButton(
// //                       onPressed: () {
// // Navigator.pop(context,false);
// //                   },
// //                       child: Text("No"))],
// //               );
// //             });
//
//         return false;
//       },

      child: Scaffold(
        appBar: AppBar(title: Text("my name is $name and  i am $age yrs")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // bool can_pop = Navigator.canPop(context);
                Navigator.maybePop(context);
                // if (can_pop) {
                //   Navigator.pop(context);
                // }
                // else {
                //   print("you can't pop");
                // }
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
