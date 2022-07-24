import 'dart:async';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:bloc/bloc.dart';
import 'package:retrobrew/model/feeds.dart';
import 'package:retrobrew/model/post.dart';
import 'package:retrobrew/provider/feeds_api_provider.dart';
import 'package:retrobrew/provider/post_api_provider.dart';

part 'feeds_bloc.freezed.dart';

part 'feeds_event.dart';
part 'feeds_state.dart';

class FeedsBloc extends Bloc<FeedsEvent, FeedsState> {

  final FeedsApiProvider _feedsApiProvider;
  final PostApiProvider _postApiProvider;


  Future<List<Post>> fetchPost(String? accessToken) async {
    List<Post> feeds;
    if(accessToken == null) {
      feeds = await _feedsApiProvider.getHomeFeeds();
    }else {
      feeds = await _feedsApiProvider.getUserFeeds("Bearer $accessToken");
    }
    return feeds;
  }

  FeedsBloc(this._feedsApiProvider, this._postApiProvider) : super(FeedsState.initial()) {
    on<FeedsEvent>((event, emit) async => {
      await event.map<FutureOr<void>>(onFetch: (e) async {

        emit(FeedsState.initial().copyWith(feeds: await fetchPost(e.token)));

      }, onAdd: (onAdd value) async {
        await _postApiProvider
            .addPost("Bearer ${value.token}", value.newPost)
        .onError((error, stackTrace) {
          throw Exception(error);
        })
            .whenComplete(() async => emit(FeedsState.initial().copyWith(feeds: await fetchPost(value.token))));
      })
    });
  }
}
