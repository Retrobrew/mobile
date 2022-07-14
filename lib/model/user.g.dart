// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uuid: json['uuid'] as String,
      username: json['username'] as String,
      email: json['email'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      sexe: json['sexe'] as String?,
      country: json['country'] as String?,
      picture: json['picture'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'username': instance.username,
      'email': instance.email,
      'dateOfBirth': instance.dateOfBirth,
      'sexe': instance.sexe,
      'country': instance.country,
      'picture': instance.picture,
    };
