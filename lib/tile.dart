import 'package:flutter/material.dart';

import 'package:piano_tile/note.dart';

class Tile extends StatelessWidget {
  final double height;
  final NoteState state;
  final VoidCallback onTap;

  const Tile(
      {super.key,
      required this.height,
      required this.state,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: GestureDetector(
        onTapDown: (_) => onTap(),
        child: Container(color: color),
      ),
    );
  }

  Color get color {
    switch (state) {
      case NoteState.ready:
        return Colors.black;
      case NoteState.tapped:
        return Colors.white10;
      case NoteState.missed:
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
