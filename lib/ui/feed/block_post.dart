import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/bloc/authentication_bloc.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/view/post_view.dart';

import '../../model/post.dart';
import '../../view/sign_in_request.dart';
import 'header_post.dart';

class BlockPost extends StatefulWidget {

  final Post post;
  Function()? onTap;
  bool? disableLike = false;

  BlockPost({Key? key, required this.post, this.onTap, this.disableLike}) : super(key: key);

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

    media() {
      if(widget.post.media != null) {
        return Image.network("https://api.retrobrew.fr/posts/${widget.post.uuid}/media");
      }

      return Container();
    }

    return InkWell(
        onTap: ()
        {
          if(widget.onTap != null) {
            widget.onTap!();
          }
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
                      media(),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          width: double.infinity,
                          child: Text(
                              widget.post.content!, textAlign: TextAlign.left))
                    ],
                  ),
                  Row(
                    children: [
                      Text("${widget.post.commentsNb ?? "0"} comments",
                      style: TextStyle(
                        color: Colors.black45
                      )),
                      Spacer(),
                      ButtonBar(
                        alignment: MainAxisAlignment.end,
                        children: [
                          // TextButton(
                          //   onPressed: () {
                          //   },
                          //   child: Row(
                          //     children: [
                          //       Icon(Icons.comment_outlined, color: Colors.grey),
                          //       Padding(
                          //         padding: const EdgeInsets.all(8.0),
                          //         child: Text("$numbersLike",
                          //             style: TextStyle(
                          //                 color: Colors.grey
                          //             )),
                          //       )
                          //     ],
                          //   ),
                          // ),
                          TextButton(
                            onPressed: () {
                              if(widget.disableLike == true) {
                                  showModalBottomSheet(
                                      context: context, builder: (context) => SignInRequest());
                                  return;
                              }
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
                      ),
                    ],
                  )
                ],
              ),
            )));
  }
}