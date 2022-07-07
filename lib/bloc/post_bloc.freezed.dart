// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'post_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PostEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token) onSendToken,
    required TResult Function() onWipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onSendToken value) onSendToken,
    required TResult Function(onWipe value) onWipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostEventCopyWith<$Res> {
  factory $PostEventCopyWith(PostEvent value, $Res Function(PostEvent) then) =
      _$PostEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PostEventCopyWithImpl<$Res> implements $PostEventCopyWith<$Res> {
  _$PostEventCopyWithImpl(this._value, this._then);

  final PostEvent _value;
  // ignore: unused_field
  final $Res Function(PostEvent) _then;
}

/// @nodoc
abstract class _$$onFetchCopyWith<$Res> {
  factory _$$onFetchCopyWith(_$onFetch value, $Res Function(_$onFetch) then) =
      __$$onFetchCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$$onFetchCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
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
    return 'PostEvent.onFetch(token: $token)';
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
    required TResult Function(String token) onSendToken,
    required TResult Function() onWipe,
  }) {
    return onFetch(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
  }) {
    return onFetch?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
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
    required TResult Function(onSendToken value) onSendToken,
    required TResult Function(onWipe value) onWipe,
  }) {
    return onFetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
  }) {
    return onFetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
    required TResult orElse(),
  }) {
    if (onFetch != null) {
      return onFetch(this);
    }
    return orElse();
  }
}

abstract class onFetch implements PostEvent {
  const factory onFetch(final String? token) = _$onFetch;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onFetchCopyWith<_$onFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onSendTokenCopyWith<$Res> {
  factory _$$onSendTokenCopyWith(
          _$onSendToken value, $Res Function(_$onSendToken) then) =
      __$$onSendTokenCopyWithImpl<$Res>;
  $Res call({String token});
}

/// @nodoc
class __$$onSendTokenCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$onSendTokenCopyWith<$Res> {
  __$$onSendTokenCopyWithImpl(
      _$onSendToken _value, $Res Function(_$onSendToken) _then)
      : super(_value, (v) => _then(v as _$onSendToken));

  @override
  _$onSendToken get _value => super._value as _$onSendToken;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$onSendToken(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onSendToken implements onSendToken {
  const _$onSendToken(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'PostEvent.onSendToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onSendToken &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$onSendTokenCopyWith<_$onSendToken> get copyWith =>
      __$$onSendTokenCopyWithImpl<_$onSendToken>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token) onSendToken,
    required TResult Function() onWipe,
  }) {
    return onSendToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
  }) {
    return onSendToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
    required TResult orElse(),
  }) {
    if (onSendToken != null) {
      return onSendToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onSendToken value) onSendToken,
    required TResult Function(onWipe value) onWipe,
  }) {
    return onSendToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
  }) {
    return onSendToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
    required TResult orElse(),
  }) {
    if (onSendToken != null) {
      return onSendToken(this);
    }
    return orElse();
  }
}

abstract class onSendToken implements PostEvent {
  const factory onSendToken(final String token) = _$onSendToken;

  String get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onSendTokenCopyWith<_$onSendToken> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onWipeCopyWith<$Res> {
  factory _$$onWipeCopyWith(_$onWipe value, $Res Function(_$onWipe) then) =
      __$$onWipeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onWipeCopyWithImpl<$Res> extends _$PostEventCopyWithImpl<$Res>
    implements _$$onWipeCopyWith<$Res> {
  __$$onWipeCopyWithImpl(_$onWipe _value, $Res Function(_$onWipe) _then)
      : super(_value, (v) => _then(v as _$onWipe));

  @override
  _$onWipe get _value => super._value as _$onWipe;
}

/// @nodoc

class _$onWipe implements onWipe {
  const _$onWipe();

  @override
  String toString() {
    return 'PostEvent.onWipe()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onWipe);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onFetch,
    required TResult Function(String token) onSendToken,
    required TResult Function() onWipe,
  }) {
    return onWipe();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
  }) {
    return onWipe?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onFetch,
    TResult Function(String token)? onSendToken,
    TResult Function()? onWipe,
    required TResult orElse(),
  }) {
    if (onWipe != null) {
      return onWipe();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onFetch value) onFetch,
    required TResult Function(onSendToken value) onSendToken,
    required TResult Function(onWipe value) onWipe,
  }) {
    return onWipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
  }) {
    return onWipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onFetch value)? onFetch,
    TResult Function(onSendToken value)? onSendToken,
    TResult Function(onWipe value)? onWipe,
    required TResult orElse(),
  }) {
    if (onWipe != null) {
      return onWipe(this);
    }
    return orElse();
  }
}

abstract class onWipe implements PostEvent {
  const factory onWipe() = _$onWipe;
}

/// @nodoc
mixin _$PostState {
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get hasReachedMax => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostStateCopyWith<PostState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostStateCopyWith<$Res> {
  factory $PostStateCopyWith(PostState value, $Res Function(PostState) then) =
      _$PostStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts, bool hasReachedMax, String? token});
}

/// @nodoc
class _$PostStateCopyWithImpl<$Res> implements $PostStateCopyWith<$Res> {
  _$PostStateCopyWithImpl(this._value, this._then);

  final PostState _value;
  // ignore: unused_field
  final $Res Function(PostState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PostStateCopyWith<$Res> implements $PostStateCopyWith<$Res> {
  factory _$$_PostStateCopyWith(
          _$_PostState value, $Res Function(_$_PostState) then) =
      __$$_PostStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Post> posts, bool hasReachedMax, String? token});
}

/// @nodoc
class __$$_PostStateCopyWithImpl<$Res> extends _$PostStateCopyWithImpl<$Res>
    implements _$$_PostStateCopyWith<$Res> {
  __$$_PostStateCopyWithImpl(
      _$_PostState _value, $Res Function(_$_PostState) _then)
      : super(_value, (v) => _then(v as _$_PostState));

  @override
  _$_PostState get _value => super._value as _$_PostState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? hasReachedMax = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_PostState(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      hasReachedMax: hasReachedMax == freezed
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_PostState implements _PostState {
  const _$_PostState(
      {required final List<Post> posts,
      required this.hasReachedMax,
      this.token})
      : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  final bool hasReachedMax;
  @override
  final String? token;

  @override
  String toString() {
    return 'PostState(posts: $posts, hasReachedMax: $hasReachedMax, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PostState &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality()
                .equals(other.hasReachedMax, hasReachedMax) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(hasReachedMax),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      __$$_PostStateCopyWithImpl<_$_PostState>(this, _$identity);
}

abstract class _PostState implements PostState {
  const factory _PostState(
      {required final List<Post> posts,
      required final bool hasReachedMax,
      final String? token}) = _$_PostState;

  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  bool get hasReachedMax => throw _privateConstructorUsedError;
  @override
  String? get token => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PostStateCopyWith<_$_PostState> get copyWith =>
      throw _privateConstructorUsedError;
}
