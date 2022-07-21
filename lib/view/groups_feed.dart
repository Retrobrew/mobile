import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:retrobrew/model/groups.dart';
import 'package:retrobrew/provider/groups_api_provider.dart';
import 'package:retrobrew/ui/feed/block_post.dart';
import 'package:retrobrew/ui/shared/loading.dart';

import 'package:retrobrew/view/releases_page.dart';

import '../bloc/groups_bloc.dart';
import '../model/post.dart';

List<String> items = List<String>.generate(
    10000,
        (i) =>
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis malesuada nibh, ac porttitor lectus imperdiet eu. Vestibulum nec ipsum quam. Quisque vestibulum egestas purus, a convallis tellus elementum vel. Morbi a sem arcu. Curabitur viverra odio et neque maximus, eu vestibulum neque congue. Quisque dictum gravida augue, ut egestas lacus. Nullam semper augue ut turpis scelerisque, nec lobortis odio viverra. Phasellus blandit sit amet eros id laoreet. Nulla auctor tincidunt tellus, non rutrum diam tempus vel. Donec vitae justo lectus.');

class GroupsFeed extends StatefulWidget {
  const GroupsFeed({Key? key, required this.group, required this.token})
      : super(key: key);
  final String token;
  final Groups group;

  @override
  GroupsFeedState createState() => GroupsFeedState();
}

class GroupsFeedState extends State<GroupsFeed>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  bool loading = true;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      initialIndex: 0,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      GroupsBloc(GroupsApiProvider(Dio()))
        ..add(GroupsEvent.onGetPosts(widget.token, widget.group.uuid!)),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () => {}, child: Icon(Icons.create)),
        body: BlocBuilder<GroupsBloc, GroupsState>(
          builder: (context, state) {
            return NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (BuildContext context,
                  bool innerBoxIsScrolled) {
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
                    bottom: TabBar(
                        indicatorColor: Colors.black,
                        labelPadding: const EdgeInsets.only(
                          top: 16,
                          bottom: 12,
                        ),
                        controller: _tabController,
                        tabs: [
                          Text("Posts"),
                          Text("Releases"),
                        ]),
                  ),
                ];
              },
              body: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(slivers: [
                    SliverList(
                        delegate: SliverChildListDelegate(
                            List.generate(state.posts.length, (index) {
                              return BlockPost(post: state.posts[index]);
                            })))
                  ]),
                  const ReleasesPage(),
                ],
              ),
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
