import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../model/post.dart';
import '../provider/post_api_provider.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';


class PostsBloc extends Bloc<PostEvent, PostState> {
  final PostApiProvider _postApiProvider;

  PostsBloc(this._postApiProvider) : super(PostState.initial()) {
    on<PostEvent>((event, emit) async => {
      await event.map<FutureOr<void>>(onFetch: (e) async {
        var data = await _postApiProvider.getPosts("Bearer ${e.token}");
        print(e);
        emit(PostState.initial().copyWith(
            posts: data
        ));
      },
          onSendToken: (e) => emit(PostState.initial().copyWith(token: e.token)),
          onWipe: (_) => emit(PostState.initial()))
    }
    );
  }
}
