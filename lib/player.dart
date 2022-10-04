import 'package:flutter/material.dart';

///this is used to show the bottom player tab in game

class Player extends StatelessWidget {
  final playerx;
  final playery;

  const Player({this.playerx,this.playery});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(((2 * playerx + playery) / (2 - playery)),0.9),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 10,
          width: MediaQuery.of(context).size.width * playery / 2,
          color: Colors.black,
        ),
      ),
    );
  }
}
