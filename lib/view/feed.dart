import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:retrobrew/bloc/post_bloc.dart';
import 'package:retrobrew/model/groups.dart';
import 'package:retrobrew/provider/feeds_api_provider.dart';
import 'package:retrobrew/provider/post_api_provider.dart';
import 'package:retrobrew/ui/feed/quick_group.dart';
import 'package:retrobrew/ui/shared/add_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/feeds_bloc.dart';
import '../ui/feed/block_post.dart';

class Feed extends StatelessWidget {
  const Feed({Key? key, this.accessToken}) : super(key: key);

  final String? accessToken;



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FeedsBloc(FeedsApiProvider(Dio()), PostApiProvider(Dio()))..add(FeedsEvent.onFetch(accessToken)),
      child: Scaffold(
          body:
          BlocConsumer<FeedsBloc, FeedsState>(builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("My feed"),
              ),
                body: CustomScrollView(slivers: [
                  SliverList(
                      delegate: SliverChildListDelegate(List.generate(1, (index) => QuickGroup()))
                  ),
                  SliverList(
                      delegate: SliverChildListDelegate(List.generate(accessToken != null ? 1 : 0, (index) => AddPost(token: accessToken!)))
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate(List.generate(state.feeds.length, (index) {
                      return BlockPost(state.feeds[index]);
                    })),
                  ),
                ]));
          }, listener: (context, state) {

          })
      ),
    );
  }


}
