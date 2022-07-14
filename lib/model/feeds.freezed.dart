// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeds.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Feeds _$FeedsFromJson(Map<String, dynamic> json) {
  return _Feeds.fromJson(json);
}

/// @nodoc
mixin _$Feeds {
  String get uuid => throw _privateConstructorUsedError; // ok
  User get author => throw _privateConstructorUsedError; // ok
  String get content => throw _privateConstructorUsedError; // ok
  DateTime get createdAt => throw _privateConstructorUsedError; // ok
  String get title => throw _privateConstructorUsedError; // ok
  String? get media => throw _privateConstructorUsedError; // ok
  Groups? get postedIn => throw _privateConstructorUsedError; // ?
  bool? get likedByUser => throw _privateConstructorUsedError;
  int? get likesNb => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedsCopyWith<Feeds> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsCopyWith<$Res> {
  factory $FeedsCopyWith(Feeds value, $Res Function(Feeds) then) =
      _$FeedsCopyWithImpl<$Res>;
  $Res call(
      {String uuid,
      User author,
      String content,
      DateTime createdAt,
      String title,
      String? media,
      Groups? postedIn,
      bool? likedByUser,
      int? likesNb});

  $UserCopyWith<$Res> get author;
  $GroupsCopyWith<$Res>? get postedIn;
}

/// @nodoc
class _$FeedsCopyWithImpl<$Res> implements $FeedsCopyWith<$Res> {
  _$FeedsCopyWithImpl(this._value, this._then);

  final Feeds _value;
  // ignore: unused_field
  final $Res Function(Feeds) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? media = freezed,
    Object? postedIn = freezed,
    Object? likedByUser = freezed,
    Object? likesNb = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
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
              as Groups?,
      likedByUser: likedByUser == freezed
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      likesNb: likesNb == freezed
          ? _value.likesNb
          : likesNb // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
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
abstract class _$$_FeedsCopyWith<$Res> implements $FeedsCopyWith<$Res> {
  factory _$$_FeedsCopyWith(_$_Feeds value, $Res Function(_$_Feeds) then) =
      __$$_FeedsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uuid,
      User author,
      String content,
      DateTime createdAt,
      String title,
      String? media,
      Groups? postedIn,
      bool? likedByUser,
      int? likesNb});

  @override
  $UserCopyWith<$Res> get author;
  @override
  $GroupsCopyWith<$Res>? get postedIn;
}

/// @nodoc
class __$$_FeedsCopyWithImpl<$Res> extends _$FeedsCopyWithImpl<$Res>
    implements _$$_FeedsCopyWith<$Res> {
  __$$_FeedsCopyWithImpl(_$_Feeds _value, $Res Function(_$_Feeds) _then)
      : super(_value, (v) => _then(v as _$_Feeds));

  @override
  _$_Feeds get _value => super._value as _$_Feeds;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? author = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? media = freezed,
    Object? postedIn = freezed,
    Object? likedByUser = freezed,
    Object? likesNb = freezed,
  }) {
    return _then(_$_Feeds(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      author: author == freezed
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
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
              as Groups?,
      likedByUser: likedByUser == freezed
          ? _value.likedByUser
          : likedByUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      likesNb: likesNb == freezed
          ? _value.likesNb
          : likesNb // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Feeds implements _Feeds {
  _$_Feeds(
      {required this.uuid,
      required this.author,
      required this.content,
      required this.createdAt,
      required this.title,
      this.media,
      this.postedIn,
      this.likedByUser,
      this.likesNb});

  factory _$_Feeds.fromJson(Map<String, dynamic> json) =>
      _$$_FeedsFromJson(json);

  @override
  final String uuid;
// ok
  @override
  final User author;
// ok
  @override
  final String content;
// ok
  @override
  final DateTime createdAt;
// ok
  @override
  final String title;
// ok
  @override
  final String? media;
// ok
  @override
  final Groups? postedIn;
// ?
  @override
  final bool? likedByUser;
  @override
  final int? likesNb;

  @override
  String toString() {
    return 'Feeds(uuid: $uuid, author: $author, content: $content, createdAt: $createdAt, title: $title, media: $media, postedIn: $postedIn, likedByUser: $likedByUser, likesNb: $likesNb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feeds &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.author, author) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality().equals(other.postedIn, postedIn) &&
            const DeepCollectionEquality()
                .equals(other.likedByUser, likedByUser) &&
            const DeepCollectionEquality().equals(other.likesNb, likesNb));
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
      const DeepCollectionEquality().hash(likedByUser),
      const DeepCollectionEquality().hash(likesNb));

  @JsonKey(ignore: true)
  @override
  _$$_FeedsCopyWith<_$_Feeds> get copyWith =>
      __$$_FeedsCopyWithImpl<_$_Feeds>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedsToJson(this);
  }
}

abstract class _Feeds implements Feeds {
  factory _Feeds(
      {required final String uuid,
      required final User author,
      required final String content,
      required final DateTime createdAt,
      required final String title,
      final String? media,
      final Groups? postedIn,
      final bool? likedByUser,
      final int? likesNb}) = _$_Feeds;

  factory _Feeds.fromJson(Map<String, dynamic> json) = _$_Feeds.fromJson;

  @override
  String get uuid => throw _privateConstructorUsedError;
  @override // ok
  User get author => throw _privateConstructorUsedError;
  @override // ok
  String get content => throw _privateConstructorUsedError;
  @override // ok
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override // ok
  String get title => throw _privateConstructorUsedError;
  @override // ok
  String? get media => throw _privateConstructorUsedError;
  @override // ok
  Groups? get postedIn => throw _privateConstructorUsedError;
  @override // ?
  bool? get likedByUser => throw _privateConstructorUsedError;
  @override
  int? get likesNb => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeedsCopyWith<_$_Feeds> get copyWith =>
      throw _privateConstructorUsedError;
}
