import 'package:colorize_text_avatar/colorize_text_avatar.dart';
import 'package:flutter/material.dart';

import '../../helper/countries.dart';
import '../../model/post.dart';

class BlockComment extends StatelessWidget {

  final Post post;

  const BlockComment({Key? key, required this.post}) : super(key: key);

  Widget _avatar() {
    if(post.author!.picture == null) {
      return TextAvatar(
        shape: Shape.Circular,
        fontSize: 15,
        numberLetters: 2,
        text: post.author!.username ?? "User deleted",
      );
    }

    return CircleAvatar(
      backgroundImage: NetworkImage(
        "https://api.retrobrew.fr/users/${post.author!.uuid}/avatar",
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onDoubleTap: () => {
          print("like")
        },
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
                leading: _avatar(),
                title: Row(
                  children: [
                    Text(post.author!.username ?? "User deleted"),
                    Spacer(),
                    Text(getCountryEmoji(post.author!.country!)),
                  ],
                ),
                subtitle: Text(post.createdAt ?? "Unknown date"),
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      width: double.infinity,
                      child: Text(post.content!,
                          textAlign: TextAlign.left)
                  ),
                ],

              )
            ],
          ),
        ));
  }
}