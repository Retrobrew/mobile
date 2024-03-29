// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Posts.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String? get uuid => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get commentsNb => throw _privateConstructorUsedError;
  User? get author => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  Groups? get postedIn => throw _privateConstructorUsedError;
  bool? get likedByUser => throw _privateConstructorUsedError;
  int? get likesNb => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String? uuid,
      String? title,
      int? commentsNb,
      User? author,
      String? content,
      String? createdAt,
      Groups? postedIn,
      bool? likedByUser,
      int? likesNb,
      String? media});

  $UserCopyWith<$Res>? get author;
  $GroupsCopyWith<$Res>? get postedIn;
}

/// @nodoc
class _$PostCopyWithImpl<$Res> implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  final Post _value;
  // ignore: unused_field
  final $Res Function(Post) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = freezed,
    Object? commentsNb = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? postedIn = freezed,
    Object? likedByUser = freezed,
    Object? likesNb = freezed,
    Object? media = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsNb: commentsNb == freezed
          ? _value.commentsNb
          : commentsNb // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      postedIn: postedIn == freezed
          ? _value.postedIn
          : postedIn // ignore: cast_nullable_to_non_nullable
              as Groups?,
      likedByUser: likedByUser == freezed
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      likesNb: likesNb == freezed
          ? _value.likesNb
          : likesNb // ignore: cast_nullable_to_non_nullable
              as int?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get author {
    if (_value.author == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.author!, (value) {
      return _then(_value.copyWith(author: value));
    });
  }

  @override
  $GroupsCopyWith<$Res>? get postedIn {
    if (_value.postedIn == null) {
      return null;
    }

    return $GroupsCopyWith<$Res>(_value.postedIn!, (value) {
      return _then(_value.copyWith(postedIn: value));
    });
  }
}

/// @nodoc
abstract class _$$_PostsCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostsCopyWith(_$_Posts value, $Res Function(_$_Posts) then) =
      __$$_PostsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? uuid,
      String? title,
      int? commentsNb,
      User? author,
      String? content,
      String? createdAt,
      Groups? postedIn,
      bool? likedByUser,
      int? likesNb,
      String? media});

  @override
  $UserCopyWith<$Res>? get author;
  @override
  $GroupsCopyWith<$Res>? get postedIn;
}

/// @nodoc
class __$$_PostsCopyWithImpl<$Res> extends _$PostCopyWithImpl<$Res>
    implements _$$_PostsCopyWith<$Res> {
  __$$_PostsCopyWithImpl(_$_Posts _value, $Res Function(_$_Posts) _then)
      : super(_value, (v) => _then(v as _$_Posts));

  @override
  _$_Posts get _value => super._value as _$_Posts;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? title = freezed,
    Object? commentsNb = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? postedIn = freezed,
    Object? likedByUser = freezed,
    Object? likesNb = freezed,
    Object? media = freezed,
  }) {
    return _then(_$_Posts(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      commentsNb: commentsNb == freezed
          ? _value.commentsNb
          : commentsNb // ignore: cast_nullable_to_non_nullable
              as int?,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      postedIn: postedIn == freezed
          ? _value.postedIn
          : postedIn // ignore: cast_nullable_to_non_nullable
              as Groups?,
      likedByUser: likedByUser == freezed
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      likesNb: likesNb == freezed
          ? _value.likesNb
          : likesNb // ignore: cast_nullable_to_non_nullable
              as int?,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posts implements _Posts {
  _$_Posts(
      {this.uuid,
      this.title,
      this.commentsNb,
      this.author,
      this.content,
      this.createdAt,
      this.postedIn,
      this.likedByUser,
      this.likesNb,
      this.media});

  factory _$_Posts.fromJson(Map<String, dynamic> json) =>
      _$$_PostsFromJson(json);

  @override
  final String? uuid;
  @override
  final String? title;
  @override
  final int? commentsNb;
  @override
  final User? author;
  @override
  final String? content;
  @override
  final String? createdAt;
  @override
  final Groups? postedIn;
  @override
  final bool? likedByUser;
  @override
  final int? likesNb;
  @override
  final String? media;

  @override
  String toString() {
    return 'Post(uuid: $uuid, title: $title, commentsNb: $commentsNb, author: $author, content: $content, createdAt: $createdAt, postedIn: $postedIn, likedByUser: $likedByUser, likesNb: $likesNb, media: $media)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posts &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.commentsNb, commentsNb) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.postedIn, postedIn) &&
            const DeepCollectionEquality()
                .equals(other.likedByUser, likedByUser) &&
            const DeepCollectionEquality().equals(other.likesNb, likesNb) &&
            const DeepCollectionEquality().equals(other.media, media));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(commentsNb),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(postedIn),
      const DeepCollectionEquality().hash(likedByUser),
      const DeepCollectionEquality().hash(likesNb),
      const DeepCollectionEquality().hash(media));

  @JsonKey(ignore: true)
  @override
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      __$$_PostsCopyWithImpl<_$_Posts>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PostsToJson(this);
  }
}

abstract class _Posts implements Post {
  factory _Posts(
      {final String? uuid,
      final String? title,
      final int? commentsNb,
      final User? author,
      final String? content,
      final String? createdAt,
      final Groups? postedIn,
      final bool? likedByUser,
      final int? likesNb,
      final String? media}) = _$_Posts;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$_Posts.fromJson;

  @override
  String? get uuid => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  int? get commentsNb => throw _privateConstructorUsedError;
  @override
  User? get author => throw _privateConstructorUsedError;
  @override
  String? get content => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  Groups? get postedIn => throw _privateConstructorUsedError;
  @override
  bool? get likedByUser => throw _privateConstructorUsedError;
  @override
  int? get likesNb => throw _privateConstructorUsedError;
  @override
  String? get media => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      throw _privateConstructorUsedError;
}
