import 'package:flutter/material.dart';

/// this is used to show the text when the ball is go off the screen.

class GameOver extends StatelessWidget {

  final bool isGameOver;
  final function;

  const GameOver({required this.isGameOver, this.function});

  @override
  Widget build(BuildContext context) {
    return isGameOver ?
    Stack(
        children: [
        Container(
            alignment: Alignment(0, -0.2),
            child: const Text("G A M E O V E R",
                style: TextStyle(fontSize: 40)
            )
        ),
        Container(
          alignment: Alignment(0,0),
          child: GestureDetector(
            onTap: function,
            child: Container(
              alignment: Alignment(0,0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      color: Colors.black,
                      padding: EdgeInsets.all(0.1),
                      child: Text("play again",style: TextStyle(color: Colors.white),)
                  )
              ),
            ),
          ),
        )
        ],
      )
     : Container();
  }
}
