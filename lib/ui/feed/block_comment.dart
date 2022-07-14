import 'package:flutter/material.dart';
import 'package:retrobrew/ui/feed/header_post.dart';
import 'package:retrobrew/view/post_view.dart';

import '../shared/tag.dart';

class BlockComment extends StatelessWidget {

  BlockComment(this.name);
  final String name;

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () => {
          //Navigator.push(context, MaterialPageRoute(builder: (ctx) => const PostView(post: ,)))
      },
        child : Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ListTile(
                dense: true,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pravatar.cc/50',
                  ),
                ) ,
                title: Text('Amélie Douillard'),
                subtitle: Text('13 years ago'),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      width: double.infinity,
                      child: Text(name,
                          textAlign: TextAlign.left)
                  ),
                ],

              )
            ],
          ),
        ));
  }
}