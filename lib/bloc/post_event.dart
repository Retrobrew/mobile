part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.onFetch(String? token) = onFetch;
  const factory PostEvent.onSendToken(String token) = onSendToken;
  const factory PostEvent.onWipe() = onWipe;
}
