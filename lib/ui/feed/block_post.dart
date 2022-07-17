import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/bloc/authentication_bloc.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/view/post_view.dart';

import '../../model/post.dart';
import 'header_post.dart';

class BlockPost extends StatefulWidget {
  const BlockPost({Key? key, required this.post}) : super(key: key);

  final Post post;

  @override
  State<BlockPost> createState() => _BlockPostState();
}

class _BlockPostState extends State<BlockPost> {


  bool liked = false;
  int numbersLike = 0;
  final PostApiProvider _postApiProvider = PostApiProvider(Dio());


  @override
  void initState() {
    super.initState();
    setState(() {
      liked = widget.post.likedByUser!;
      numbersLike = widget.post.likesNb!;
    });
  }

  @override
  Widget build(BuildContext context) {
    String groupName;

    Color colorBtn = liked ? Colors.red : Colors.grey;

    var userState = BlocProvider.of<AuthenticationBloc>(context);

    if (widget.post.postedIn!.name == null) {
      groupName = "Missingno";
    } else if (widget.post.postedIn!.name == "home") {
      groupName = "My feed";
    } else {
      groupName = widget.post.postedIn!.name!;
    }

    return InkWell(
        onTap: () =>
        {
          Navigator.push(context,
              MaterialPageRoute(builder: (ctx) => PostView(post: widget.post)))
        },
        child: Card(
            elevation: 3,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  HeaderPost(
                      title: widget.post.title!,
                      author: widget.post.author!,
                      groupName: groupName),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                          width: double.infinity,
                          child: Text(
                              widget.post.content!, textAlign: TextAlign.left))
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          if(!liked) {
                            setState(() {
                              liked = true;
                              numbersLike = numbersLike + 1;
                            });
                            _postApiProvider.like(widget.post.uuid!,
                                "Bearer ${userState.state.authentication!.access_token!}");

                          }else {
                            setState(() {
                              liked = false;
                              numbersLike = numbersLike - 1;
                            });
                            _postApiProvider.unlike(widget.post.uuid!,
                                "Bearer ${userState.state.authentication!.access_token!}");

                          }
                        },
                        child: Row(
                          children: [
                            Icon(Icons.favorite, color: colorBtn),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("$numbersLike",
                                  style: TextStyle(
                                      color: colorBtn
                                  )),
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )));
  }
}