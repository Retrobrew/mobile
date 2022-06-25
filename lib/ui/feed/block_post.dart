import 'package:flutter/material.dart';
import 'package:retrobrew/ui/feed/header_post.dart';

import '../shared/tag.dart';

class BlockPost extends StatelessWidget {

  BlockPost(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () => { print("hello") },
        child: Card(
        elevation: 3,
        child : Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              HeaderPost(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: double.infinity,
                      child: Text(name,
                          textAlign: TextAlign.left)
                  )
                ],

              ),
              ButtonBar(
                alignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Icon(Icons.thumb_up_outlined),
                  ),
                  TextButton(
                    onPressed: () {
                      // Perform some action
                    },
                    child: const Icon(Icons.thumb_down_alt_outlined),
                  ),
                  InkWell(
                    child: Text("+555"),
                  )
                ],
              )
            ],
          ),
        ))
      );
  }
}