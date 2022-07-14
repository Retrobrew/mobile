// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feeds_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FeedsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token, Post newPost) onAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onAdd value) onAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsEventCopyWith<$Res> {
  factory $FeedsEventCopyWith(
          FeedsEvent value, $Res Function(FeedsEvent) then) =
      _$FeedsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FeedsEventCopyWithImpl<$Res> implements $FeedsEventCopyWith<$Res> {
  _$FeedsEventCopyWithImpl(this._value, this._then);

  final FeedsEvent _value;
  // ignore: unused_field
  final $Res Function(FeedsEvent) _then;
}

/// @nodoc
abstract class _$$onFetchCopyWith<$Res> {
  factory _$$onFetchCopyWith(_$onFetch value, $Res Function(_$onFetch) then) =
      __$$onFetchCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$$onFetchCopyWithImpl<$Res> extends _$FeedsEventCopyWithImpl<$Res>
    implements _$$onFetchCopyWith<$Res> {
  __$$onFetchCopyWithImpl(_$onFetch _value, $Res Function(_$onFetch) _then)
      : super(_value, (v) => _then(v as _$onFetch));

  @override
  _$onFetch get _value => super._value as _$onFetch;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$onFetch(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$onFetch implements onFetch {
  const _$onFetch(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'FeedsEvent.onFetch(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onFetch &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$onFetchCopyWith<_$onFetch> get copyWith =>
      __$$onFetchCopyWithImpl<_$onFetch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token, Post newPost) onAdd,
  }) {
    return onFetch(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
  }) {
    return onFetch?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onAdd value) onAdd,
  }) {
    return onFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
  }) {
    return onFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(this);
    }
    return orElse();
  }
}

abstract class onFetch implements FeedsEvent {
  const factory onFetch(final String? token) = _$onFetch;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onFetchCopyWith<_$onFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onAddCopyWith<$Res> {
  factory _$$onAddCopyWith(_$onAdd value, $Res Function(_$onAdd) then) =
      __$$onAddCopyWithImpl<$Res>;
  $Res call({String token, Post newPost});

  $PostCopyWith<$Res> get newPost;
}

/// @nodoc
class __$$onAddCopyWithImpl<$Res> extends _$FeedsEventCopyWithImpl<$Res>
    implements _$$onAddCopyWith<$Res> {
  __$$onAddCopyWithImpl(_$onAdd _value, $Res Function(_$onAdd) _then)
      : super(_value, (v) => _then(v as _$onAdd));

  @override
  _$onAdd get _value => super._value as _$onAdd;

  @override
  $Res call({
    Object? token = freezed,
    Object? newPost = freezed,
  }) {
    return _then(_$onAdd(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      newPost == freezed
          ? _value.newPost
          : newPost // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }

  @override
  $PostCopyWith<$Res> get newPost {
    return $PostCopyWith<$Res>(_value.newPost, (value) {
      return _then(_value.copyWith(newPost: value));
    });
  }
}

/// @nodoc

class _$onAdd implements onAdd {
  const _$onAdd(this.token, this.newPost);

  @override
  final String token;
  @override
  final Post newPost;

  @override
  String toString() {
    return 'FeedsEvent.onAdd(token: $token, newPost: $newPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onAdd &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.newPost, newPost));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(newPost));

  @JsonKey(ignore: true)
  @override
  _$$onAddCopyWith<_$onAdd> get copyWith =>
      __$$onAddCopyWithImpl<_$onAdd>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token, Post newPost) onAdd,
  }) {
    return onAdd(token, newPost);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
  }) {
    return onAdd?.call(token, newPost);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token, Post newPost)? onAdd,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(token, newPost);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onAdd value) onAdd,
  }) {
    return onAdd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
  }) {
    return onAdd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onAdd value)? onAdd,
    required TResult orElse(),
  }) {
    if (onAdd != null) {
      return onAdd(this);
    }
    return orElse();
  }
}

abstract class onAdd implements FeedsEvent {
  const factory onAdd(final String token, final Post newPost) = _$onAdd;

  String get token => throw _privateConstructorUsedError;
  Post get newPost => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onAddCopyWith<_$onAdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FeedsState {
  List<Post> get feeds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FeedsStateCopyWith<FeedsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedsStateCopyWith<$Res> {
  factory $FeedsStateCopyWith(
          FeedsState value, $Res Function(FeedsState) then) =
      _$FeedsStateCopyWithImpl<$Res>;
  $Res call({List<Post> feeds});
}

/// @nodoc
class _$FeedsStateCopyWithImpl<$Res> implements $FeedsStateCopyWith<$Res> {
  _$FeedsStateCopyWithImpl(this._value, this._then);

  final FeedsState _value;
  // ignore: unused_field
  final $Res Function(FeedsState) _then;

  @override
  $Res call({
    Object? feeds = freezed,
  }) {
    return _then(_value.copyWith(
      feeds: feeds == freezed
          ? _value.feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
abstract class _$$_FeedsCopyWith<$Res> implements $FeedsStateCopyWith<$Res> {
  factory _$$_FeedsCopyWith(_$_Feeds value, $Res Function(_$_Feeds) then) =
      __$$_FeedsCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> feeds});
}

/// @nodoc
class __$$_FeedsCopyWithImpl<$Res> extends _$FeedsStateCopyWithImpl<$Res>
    implements _$$_FeedsCopyWith<$Res> {
  __$$_FeedsCopyWithImpl(_$_Feeds _value, $Res Function(_$_Feeds) _then)
      : super(_value, (v) => _then(v as _$_Feeds));

  @override
  _$_Feeds get _value => super._value as _$_Feeds;

  @override
  $Res call({
    Object? feeds = freezed,
  }) {
    return _then(_$_Feeds(
      feeds: feeds == freezed
          ? _value._feeds
          : feeds // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_Feeds implements _Feeds {
  const _$_Feeds({required final List<Post> feeds}) : _feeds = feeds;

  final List<Post> _feeds;
  @override
  List<Post> get feeds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feeds);
  }

  @override
  String toString() {
    return 'FeedsState(feeds: $feeds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Feeds &&
            const DeepCollectionEquality().equals(other._feeds, _feeds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_feeds));

  @JsonKey(ignore: true)
  @override
  _$$_FeedsCopyWith<_$_Feeds> get copyWith =>
      __$$_FeedsCopyWithImpl<_$_Feeds>(this, _$identity);
}

abstract class _Feeds implements FeedsState {
  const factory _Feeds({required final List<Post> feeds}) = _$_Feeds;

  @override
  List<Post> get feeds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeedsCopyWith<_$_Feeds> get copyWith =>
      throw _privateConstructorUsedError;
}
