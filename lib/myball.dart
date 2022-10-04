import 'package:flutter/material.dart';

///this is used to show the ball in game..

class Ball extends StatelessWidget {
  final ballx;
  final bally;

  const Ball({this.ballx,this.bally});

  @override
  Widget build(BuildContext context) {
    return  Container(
      alignment: Alignment(ballx,bally),
      child: Container(
        height: 15,
        width: 15,
        decoration: const BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle
        ),
      ),
    );
  }
}
