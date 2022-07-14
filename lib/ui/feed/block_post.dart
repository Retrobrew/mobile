import 'package:flutter/material.dart';
import 'package:retrobrew/model/feeds.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrobrew/ui/feed/header_post.dart';
import 'package:retrobrew/view/post_view.dart';

import '../shared/tag.dart';

class BlockPost extends StatelessWidget {

  BlockPost(this.post);
  final Post post;

  @override
  Widget build(BuildContext context) {

    String groupName;

    if(post.postedIn!.name == null) {
      groupName = "Missingno";
    }else if(post.postedIn!.name == "home") {
      groupName = "My feed";
    }else {
      groupName = post.postedIn!.name!;
    }

    return
      InkWell(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(builder: (ctx) => PostView(post: post)))
      },
        child: Card(
        elevation: 3,
        child : Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              HeaderPost(title: post.title!, author: post.author!.username, groupName: groupName),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      width: double.infinity,
                      child: Text(post.content!,
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