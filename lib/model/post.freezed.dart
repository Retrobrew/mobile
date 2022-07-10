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
  String get uuid => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get media => throw _privateConstructorUsedError;
  String? get postedIn => throw _privateConstructorUsedError;
  String? get lastUpdatedAt => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      String author,
      String content,
      DateTime createdAt,
      String title,
      String? media,
      String? postedIn,
      String? lastUpdatedAt,
      String? parent});
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
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? media = freezed,
    Object? postedIn = freezed,
    Object? lastUpdatedAt = freezed,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      postedIn: postedIn == freezed
          ? _value.postedIn
          : postedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: lastUpdatedAt == freezed
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostsCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$_PostsCopyWith(_$_Posts value, $Res Function(_$_Posts) then) =
      __$$_PostsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      String author,
      String content,
      DateTime createdAt,
      String title,
      String? media,
      String? postedIn,
      String? lastUpdatedAt,
      String? parent});
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
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? media = freezed,
    Object? postedIn = freezed,
    Object? lastUpdatedAt = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$_Posts(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      postedIn: postedIn == freezed
          ? _value.postedIn
          : postedIn // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdatedAt: lastUpdatedAt == freezed
          ? _value.lastUpdatedAt
          : lastUpdatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: parent == freezed
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Posts implements _Posts {
  _$_Posts(
      {required this.uuid,
      required this.author,
      required this.content,
      required this.createdAt,
      required this.title,
      this.media,
      this.postedIn,
      this.lastUpdatedAt,
      this.parent});

  factory _$_Posts.fromJson(Map<String, dynamic> json) =>
      _$$_PostsFromJson(json);

  @override
  final String uuid;
  @override
  final String author;
  @override
  final String content;
  @override
  final DateTime createdAt;
  @override
  final String title;
  @override
  final String? media;
  @override
  final String? postedIn;
  @override
  final String? lastUpdatedAt;
  @override
  final String? parent;

  @override
  String toString() {
    return 'Post(uuid: $uuid, author: $author, content: $content, createdAt: $createdAt, title: $title, media: $media, postedIn: $postedIn, lastUpdatedAt: $lastUpdatedAt, parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Posts &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality().equals(other.postedIn, postedIn) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdatedAt, lastUpdatedAt) &&
            const DeepCollectionEquality().equals(other.parent, parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(author),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(media),
      const DeepCollectionEquality().hash(postedIn),
      const DeepCollectionEquality().hash(lastUpdatedAt),
      const DeepCollectionEquality().hash(parent));

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
      {required final String uuid,
      required final String author,
      required final String content,
      required final DateTime createdAt,
      required final String title,
      final String? media,
      final String? postedIn,
      final String? lastUpdatedAt,
      final String? parent}) = _$_Posts;

  factory _Posts.fromJson(Map<String, dynamic> json) = _$_Posts.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override
  String get author => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get media => throw _privateConstructorUsedError;
  @override
  String? get postedIn => throw _privateConstructorUsedError;
  @override
  String? get lastUpdatedAt => throw _privateConstructorUsedError;
  @override
  String? get parent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostsCopyWith<_$_Posts> get copyWith =>
      throw _privateConstructorUsedError;
}
