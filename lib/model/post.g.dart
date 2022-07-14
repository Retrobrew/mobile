// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Posts _$$_PostsFromJson(Map<String, dynamic> json) => _$_Posts(
      uuid: json['uuid'] as String?,
      title: json['title'] as String?,
      commentsNb: json['commentsNb'] as int?,
      author: json['author'] == null
          ? null
          : User.fromJson(json['author'] as Map<String, dynamic>),
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
      postedIn: json['postedIn'] == null
          ? null
          : Groups.fromJson(json['postedIn'] as Map<String, dynamic>),
      likedByUser: json['likedByUser'] as bool?,
      likesNb: json['likesNb'] as int?,
      media: json['media'] as String?,
    );

Map<String, dynamic> _$$_PostsToJson(_$_Posts instance) => <String, dynamic>{
      'uuid': instance.uuid,
      'title': instance.title,
      'commentsNb': instance.commentsNb,
      'author': instance.author,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'postedIn': instance.postedIn,
      'likedByUser': instance.likedByUser,
      'likesNb': instance.likesNb,
      'media': instance.media,
    };
