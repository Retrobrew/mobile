part of 'feeds_bloc.dart';

@freezed
class FeedsState with _$FeedsState {
  const factory FeedsState({
    required List<Post> feeds
  }) = _Feeds;

  factory FeedsState.initial() => const FeedsState(feeds: []);

}