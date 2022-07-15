import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/ui/feed/block_comment.dart';
import 'package:retrobrew/ui/feed/block_post.dart';

import '../bloc/authentication_bloc.dart';

class PostView extends StatefulWidget {
  final Post post;

  const PostView({Key? key, required this.post}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PostView();
}

class _PostView extends State<PostView> {
  late List<Post> _comments = [];
  bool _loading = true;
  bool _lockComment = false;
  bool _markForCheck = true;
  final _postApiProvider = PostApiProvider(Dio());
  late AuthenticationBloc state;
  final TextEditingController _commentController = TextEditingController();

  Widget _commentsWidget(String content) {
    if (_comments.isEmpty) {
      return const Text("Nothing");
    }

    return Card(elevation: 3, child: BlockComment(content));
  }

  pushCommentButton() {
    if (_lockComment) {
      return Container(
        height: 20,
          child:
          Center(child: LoadingAnimationWidget.inkDrop(color: Colors.deepPurple, size: 20)))
      ;
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Row(children: [
        Flexible(
          flex: 6,
          child: TextField(
              controller: _commentController,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Add a comment',
              )),
        ),
        Flexible(
          child: TextButton(
            onPressed: () {
              var comment = Post(
                  content: _commentController.text,
                  createdAt: DateTime.now().toString());

              setState(() {
                _lockComment = true;
              });

              _postApiProvider
                  .postComment(
                      widget.post.uuid!,
                      "Bearer ${state.state.authentication!.access_token!}",
                      comment)
                  .then((value) {
                setState(() {
                  _lockComment = false;
                  _markForCheck = true;
                });
              });
            },
            child: const Icon(Icons.send),
          ),
        )
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    state = BlocProvider.of<AuthenticationBloc>(context);

    if (!_markForCheck || _loading) {
      _postApiProvider
          .getAllComments(widget.post.uuid!,
              "Bearer ${state.state.authentication!.access_token!}")
          .then((value) {
        setState(() {
          _loading = false;
          _markForCheck = true;
          _comments = value;
        });
      });
    }

    setState(() => _loading = true);

    return Scaffold(
        bottomNavigationBar: SafeArea(child: pushCommentButton()),
        appBar: AppBar(
            title: Text(widget.post.postedIn!.name ?? "Missingno"),
            backgroundColor: widget.post.postedIn!.name != null
                ? Colors.amber
                : Colors.grey),
        body: CustomScrollView(slivers: [
          SliverList(
              delegate: SliverChildListDelegate(
                  List.generate(1, (index) => BlockPost(widget.post)))),
          SliverList(
              delegate: SliverChildListDelegate(
                  List.generate(_comments.length, (index) {
            return _commentsWidget(_comments[index].content!);
          }))),
        ]));
  }
}
