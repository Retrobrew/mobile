import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  Tag(this.content, this.color);

  final String content;
  final MaterialColor color;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Text(
        content,
        style: TextStyle(fontSize: 12),
        textAlign: TextAlign.left,
      )
    );
  }

}