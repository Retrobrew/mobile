import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrobrew/view/feed.dart';

import '../../bloc/feeds_bloc.dart';
import '../../bloc/post_bloc.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key, required this.token}) : super(key: key);

  final String token;

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {


  @override
  Widget build(BuildContext context) {
    var _title = TextEditingController();
    var _content = TextEditingController();

    return BlocBuilder<FeedsBloc, FeedsState>(
      builder: (context, state) {
        return Card(
          elevation: 3,
          child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextField(
                      controller: _title,
                      decoration: const InputDecoration(
                        border: null,
                        hintText: 'Add a title to your post!',
                      )),
                  TextField(
                      maxLines: 4,
                      controller: _content,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'How do you feel today?',
                      )),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () => {
                          //Post newPost = Post(uuid: uuid)
                        },
                        child: Text("Upload an image"),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {
                      Post newPost = Post(
                        title: _title.text,
                        content: _content.text,
                        createdAt:
                            DateFormat("yyyy-MM-dd").format(DateTime.now()),
                      );

                      context
                          .read<FeedsBloc>()
                          .add(FeedsEvent.onAdd(widget.token, newPost));
                    },
                    child: Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(Icons.create),
                        ),
                        Text("Create"),
                      ],
                    ),
                  ),
                ],
              )),
        );
      },
    );
  }
}
