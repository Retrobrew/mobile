// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$$_AuthenticationFromJson(Map<String, dynamic> json) =>
    _$_Authentication(
      email: json['email'] as String?,
      username: json['username'],
      dateOfBirth: json['dateOfBirth'],
      password: json['password'],
      sexe: json['sexe'],
      country: json['country'],
      access_token: json['access_token'] as String?,
    );

Map<String, dynamic> _$$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'email': instance.email,
      'username': instance.username,
      'dateOfBirth': instance.dateOfBirth,
      'password': instance.password,
      'sexe': instance.sexe,
      'country': instance.country,
      'access_token': instance.access_token,
    };
