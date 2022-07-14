import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrobrew/model/authentication.dart';

import '../model/post.dart';
import '../provider/post_api_provider.dart';

part 'post_event.dart';

part 'post_state.dart';

part 'post_bloc.freezed.dart';

class PostsBloc extends Bloc<PostEvent, PostState> {
  final PostApiProvider _postApiProvider;

  PostsBloc(this._postApiProvider) : super(PostState.initial()) {
    on<PostEvent>((event, emit) async => {
          await event.map<FutureOr<void>>(
              onFetch: (e) async {
                if (e.token != null) {
                  if (e.uuid != null) {
                    var data = await _postApiProvider.getPost(
                        e.uuid!, "Bearer ${e.token!}");
                    //emit(PostState(posts: posts, hasReachedMax: hasReachedMax))
                  }
                }
              },
              onSendToken: (e) =>
                  emit(PostState.initial().copyWith(token: e.token)),
              onWipe: (_) => emit(PostState.initial()),
              onAdd: (onAdd value) async {
                await _postApiProvider
                    .addPost("Bearer ${value.token}", value.newPost)
                    .whenComplete(() => emit(PostState.initial().copyWith(posts: [value.newPost, ...state.posts])))
                    .catchError((err) => print(err));
                emit(PostState.initial().copyWith(posts: [value.newPost, ...state.posts]));
              })
        });
  }
}
