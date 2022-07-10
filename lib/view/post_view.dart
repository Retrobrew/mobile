import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:retrobrew/ui/feed/block_comment.dart';
import 'package:retrobrew/ui/feed/block_post.dart';

class PostView extends StatefulWidget {
  final String uuid;

  const PostView({Key? key, required this.uuid}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PostView();

}

class _PostView extends State<PostView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemon yellow"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          BlockPost("test"),
          Card(
            elevation: 3,
            child: Column(
              children: [
                BlockComment("hello"),
                BlockComment("hello"),
            ],
            )
          ),
          Spacer(),
          SafeArea(
            child: Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const Flexible(
                    flex: 6,
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Add a comment',
                      )
                    ),
                  ),
                  Flexible(
                    child: TextButton(
                      onPressed: () => {
                        print("hello")
                      },
                      child: Icon(Icons.send),
                    ),
                  )
                ],
              )

            ),
          )
        ],
      )
    );
  }
}