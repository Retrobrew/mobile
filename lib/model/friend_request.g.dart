// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FriendRequest _$$_FriendRequestFromJson(Map<String, dynamic> json) =>
    _$_FriendRequest(
      id: json['id'] as int,
      requester: User.fromJson(json['requester'] as Map<String, dynamic>),
      sentAt: json['sentAt'] as String,
      status: $enumDecode(_$STATUSEnumMap, json['status']),
    );

Map<String, dynamic> _$$_FriendRequestToJson(_$_FriendRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'requester': instance.requester,
      'sentAt': instance.sentAt,
      'status': _$STATUSEnumMap[instance.status],
    };

const _$STATUSEnumMap = {
  STATUS.pending: 'pending',
  STATUS.accepted: 'accepted',
  STATUS.refused: 'refused',
};
