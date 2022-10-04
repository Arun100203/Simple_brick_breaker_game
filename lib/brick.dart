import 'package:flutter/material.dart';

///for creating multiple bricks

class Bricks extends StatelessWidget {

  final brickX;
  final brickY;
  final brickHeight;
  final brickWidth;
  final bool isBrickBroken;

  const Bricks({this.brickX, this.brickY, this.brickHeight, this.brickWidth, required this.isBrickBroken});

  @override
  Widget build(BuildContext context) {
    return isBrickBroken ?
    Container() : Container(
        alignment: Alignment(((2 * brickX + brickY) / ( 2 - brickY)), brickY),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Container(
            height: MediaQuery.of(context).size.height * brickHeight / 2,
            width: MediaQuery.of(context).size.width * brickWidth / 4,
            color: Colors.black,
          ),
        )
    );
  }
}
