// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      picture: json['picture'] as String?,
      sex: json['sex'] as String?,
      country: json['country'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      friendshipRequestId: json['friendshipRequestId'] as String?,
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'picture': instance.picture,
      'sex': instance.sex,
      'country': instance.country,
      'dateOfBirth': instance.dateOfBirth,
      'friendshipRequestId': instance.friendshipRequestId,
    };
