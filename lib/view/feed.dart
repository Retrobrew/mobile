import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/bloc/post_bloc.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/ui/feed/quick_group.dart';
import 'package:retrobrew/ui/shared/add_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../auth.dart';
import '../ui/feed/block_post.dart';

class Feed extends StatelessWidget {
  Feed({Key? key}) : super(key: key);


  final List<String> items = List<String>.generate(
      10000,
          (i) =>
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur facilisis malesuada nibh, ac porttitor lectus imperdiet eu. Vestibulum nec ipsum quam. Quisque vestibulum egestas purus, a convallis tellus elementum vel. Morbi a sem arcu. Curabitur viverra odio et neque maximus, eu vestibulum neque congue. Quisque dictum gravida augue, ut egestas lacus. Nullam semper augue ut turpis scelerisque, nec lobortis odio viverra. Phasellus blandit sit amet eros id laoreet. Nulla auctor tincidunt tellus, non rutrum diam tempus vel. Donec vitae justo lectus.');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsBloc(PostApiProvider(Dio()))..add(PostEvent.onFetch(Auth.token)),
      child: Scaffold(
          body:
          BlocConsumer<PostsBloc, PostState>(builder: (context, state) {
            return Scaffold(
                body: CustomScrollView(slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate(List.generate(1, (index) => QuickGroup()))
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate(List.generate(1, (index) => AddPost()))
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(List.generate(items.length, (index) {
                      return BlockPost(items[index]);
                    })),
                  ),
                ]));
          }, listener: (context, state) {

          })
      ),
    );
  }


}
