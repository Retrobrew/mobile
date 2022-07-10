import 'dart:math';

import 'package:flutter/material.dart';

class QuickGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var list = List<String>.generate(20, (i) => 'https://api.lorem.space/image/game?w=640&h=480&$i');
    return SizedBox(
        height: 100,
        child:
        Column(
          children: [
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                    child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(list[index]),
                        backgroundColor: Colors.transparent
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }

}