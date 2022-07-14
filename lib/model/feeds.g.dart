// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feeds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Feeds _$$_FeedsFromJson(Map<String, dynamic> json) => _$_Feeds(
      uuid: json['uuid'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      media: json['media'] as String?,
      postedIn: json['postedIn'] == null
          ? null
          : Groups.fromJson(json['postedIn'] as Map<String, dynamic>),
      likedByUser: json['likedByUser'] as bool?,
      likesNb: json['likesNb'] as int?,
    );

Map<String, dynamic> _$$_FeedsToJson(_$_Feeds instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'author': instance.author,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'media': instance.media,
      'postedIn': instance.postedIn,
      'likedByUser': instance.likedByUser,
      'likesNb': instance.likesNb,
    };
