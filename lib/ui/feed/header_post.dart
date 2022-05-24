import 'package:flutter/material.dart';
import 'package:retrobrew/ui/shared/tag.dart';

class HeaderPost extends StatelessWidget {
  HeaderPost();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Tag("Pokemon Yellow", Colors.yellow),
              SizedBox(width: 5),
              Text("Update Pokemon yellow v1",
              style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            children: [
              Text("posted by Quentin Molero",
              style: TextStyle(
                fontStyle: FontStyle.italic
              ))
            ],
          )

        ],
      ),
    );
  }}