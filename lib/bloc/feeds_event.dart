part of 'feeds_bloc.dart';

@freezed
class FeedsEvent with _$FeedsEvent {
  const factory FeedsEvent.onFetch(String? token) = onFetch;
  const factory FeedsEvent.onAdd(String token, Post newPost) = onAdd;

}