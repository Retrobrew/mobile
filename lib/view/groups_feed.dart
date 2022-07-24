import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/animation/fadeanimation.dart';
import 'package:retrobrew/bloc/post_bloc.dart';
import 'package:retrobrew/model/groups.dart';
import 'package:retrobrew/provider/groups_api_provider.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/ui/feed/block_post.dart';
import 'package:retrobrew/ui/shared/add_post.dart';
import 'package:retrobrew/ui/shared/loading.dart';
import 'package:retrobrew/view/post_view.dart';

import 'package:retrobrew/view/releases_page.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../bloc/groups_bloc.dart';
import '../bloc/user_bloc.dart';
import '../model/post.dart';

class GroupsFeed extends StatefulWidget {
  const GroupsFeed(
      {Key? key,
      required this.group,
      required this.token,
      required this.userUuid})
      : super(key: key);
  final String token;
  final String userUuid;
  final Groups group;

  @override
  GroupsFeedState createState() => GroupsFeedState();
}

class GroupsFeedState extends State<GroupsFeed>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool loading = true;
  bool floatingActionIsPushed = false;

  bool isJoin = false;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 1,
      vsync: this,
    );

    isJoin = widget.group.members!
        .where((element) => element.user == widget.userUuid)
        .isEmpty;
  }

  toggleAddPost() {
    floatingActionIsPushed = !floatingActionIsPushed;
  }

  actionButton(String uuid) {
    if (widget.group.createdBy!.uuid == uuid) {
      return FloatingActionButton(
          onPressed: () => {
                setState(() {
                  toggleAddPost();
                })
              },
          child: Icon(Icons.create));
    } else {
      var groupsApiProvider = GroupsApiProvider(Dio());

      final MaterialColor color = isJoin ? Colors.red : Colors.green;
      final IconData groupIcon = isJoin ? Icons.group_remove : Icons.group_add;

      return Theme(
        data: ThemeData(primarySwatch: color),
        child: FloatingActionButton(
            onPressed: () {
              if (isJoin) {
                groupsApiProvider
                    .leave(widget.group.uuid!, "Bearer ${widget.token}")
                    .then((value) {
                  showTopSnackBar(
                    context,
                    const CustomSnackBar.info(
                        message: "You are leaving the group"),
                  );
                });
              } else {
                groupsApiProvider
                    .join(widget.group.uuid!, "Bearer ${widget.token}")
                    .then((value) {
                  showTopSnackBar(
                    context,
                    const CustomSnackBar.info(
                        message: "You are joining the group"),
                  );
                });
              }

              setState(() {
                isJoin = !isJoin;
              });
            },
            child: Icon(groupIcon)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    print(widget.group);

    return BlocProvider(
      create: (context) => GroupsBloc(GroupsApiProvider(Dio()))
        ..add(GroupsEvent.onGetPosts(widget.token, widget.group.uuid!)),
      child: Scaffold(
        floatingActionButton: actionButton(widget.userUuid),
        body: BlocBuilder<GroupsBloc, GroupsState>(
          builder: (context, state) {
            return NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  SliverAppBar(
                    title: Text(widget.group.name!),
                    pinned: true,
                    floating: true,
                    snap: true,
                    backgroundColor: Colors.green,
                    expandedHeight: 150.0,
                    flexibleSpace: FlexibleSpaceBar(
                      background: Image.network(
                          "https://i.ytimg.com/vi/Wcp_ug1TsO0/maxresdefault.jpg",
                          fit: BoxFit.cover),
                    ),
                  ),
                ];
              },
              body: CustomScrollView(slivers: [
                SliverList(
                    delegate: SliverChildListDelegate(
                        List.generate(floatingActionIsPushed ? 1 : 0, (index) {
                  return FadeAnimation(
                      delay: 0.2,
                      child: AddPost(onClick: (Post post) {
                        var postApiProvider = PostApiProvider(Dio());
                        post.copyWith(postedIn: widget.group);
                        postApiProvider.addPost(widget.token, post).then(
                            (value) => context.read<GroupsBloc>()
                              ..add(GroupsEvent.onGetAll(widget.token)));
                      }));
                }))),
                SliverList(
                    delegate: SliverChildListDelegate(List.generate(
                        state.posts.length > 0 ? state.posts.length : 1,
                        (index) {
                  if (state.posts.length == 0) {
                    return Column(
                      children: const [
                        Image(
                          image: NetworkImage(
                              "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/56de6077-c2fc-4d31-8c2a-fb1b9c7044e4/dbsvbdl-8f6b1006-d768-48c2-a52d-87ea7fca70bd.gif?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzU2ZGU2MDc3LWMyZmMtNGQzMS04YzJhLWZiMWI5YzcwNDRlNFwvZGJzdmJkbC04ZjZiMTAwNi1kNzY4LTQ4YzItYTUyZC04N2VhN2ZjYTcwYmQuZ2lmIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.a7mo1sp_rikkvAXI1PDX07071VY2OJPoshvTm1zrN8g"),
                          width: 300,
                        ),
                        Text("This groups has no post"),
                        Text("here is a tape to relax you")
                      ],
                    );
                  }
                  return BlockPost(
                    post: state.posts[index],
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PostView(post: state.posts[index])))
                    },
                  );
                })))
              ]),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
