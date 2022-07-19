import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrobrew/model/user.dart';

part 'friend_request.freezed.dart';
part 'friend_request.g.dart';

enum STATUS {
  pending, accepted, refused
}

@freezed
class FriendRequest with _$FriendRequest {

  factory FriendRequest({
    required int id,
    required User requester,
    required String sentAt,
    required STATUS status
  }) = _FriendRequest;

  factory FriendRequest.fromJson(Map<String, dynamic> json) => _$FriendRequestFromJson(json);
}