// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Posts _$$_PostsFromJson(Map<String, dynamic> json) => _$_Posts(
      uuid: json['uuid'] as String,
      author: json['author'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      title: json['title'] as String,
      media: json['media'] as String?,
      postedIn: json['postedIn'] as String?,
      lastUpdatedAt: json['lastUpdatedAt'] as String?,
      parent: json['parent'] as String?,
    );

Map<String, dynamic> _$$_PostsToJson(_$_Posts instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'author': instance.author,
      'content': instance.content,
      'createdAt': instance.createdAt.toIso8601String(),
      'title': instance.title,
      'media': instance.media,
      'postedIn': instance.postedIn,
      'lastUpdatedAt': instance.lastUpdatedAt,
      'parent': instance.parent,
    };
