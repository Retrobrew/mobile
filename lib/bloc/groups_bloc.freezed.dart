// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'groups_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GroupsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsEventCopyWith<$Res> {
  factory $GroupsEventCopyWith(
          GroupsEvent value, $Res Function(GroupsEvent) then) =
      _$GroupsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupsEventCopyWithImpl<$Res> implements $GroupsEventCopyWith<$Res> {
  _$GroupsEventCopyWithImpl(this._value, this._then);

  final GroupsEvent _value;
  // ignore: unused_field
  final $Res Function(GroupsEvent) _then;
}

/// @nodoc
abstract class _$$onGetAllCopyWith<$Res> {
  factory _$$onGetAllCopyWith(
          _$onGetAll value, $Res Function(_$onGetAll) then) =
      __$$onGetAllCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$$onGetAllCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$$onGetAllCopyWith<$Res> {
  __$$onGetAllCopyWithImpl(_$onGetAll _value, $Res Function(_$onGetAll) _then)
      : super(_value, (v) => _then(v as _$onGetAll));

  @override
  _$onGetAll get _value => super._value as _$onGetAll;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$onGetAll(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$onGetAll implements onGetAll {
  const _$onGetAll(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'GroupsEvent.onGetAll(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onGetAll &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$onGetAllCopyWith<_$onGetAll> get copyWith =>
      __$$onGetAllCopyWithImpl<_$onGetAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) {
    return onGetAll(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) {
    return onGetAll?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetAll != null) {
      return onGetAll(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) {
    return onGetAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) {
    return onGetAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetAll != null) {
      return onGetAll(this);
    }
    return orElse();
  }
}

abstract class onGetAll implements GroupsEvent {
  const factory onGetAll(final String? token) = _$onGetAll;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onGetAllCopyWith<_$onGetAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onGetMyGroupsCopyWith<$Res> {
  factory _$$onGetMyGroupsCopyWith(
          _$onGetMyGroups value, $Res Function(_$onGetMyGroups) then) =
      __$$onGetMyGroupsCopyWithImpl<$Res>;
  $Res call({String? token});
}

/// @nodoc
class __$$onGetMyGroupsCopyWithImpl<$Res>
    extends _$GroupsEventCopyWithImpl<$Res>
    implements _$$onGetMyGroupsCopyWith<$Res> {
  __$$onGetMyGroupsCopyWithImpl(
      _$onGetMyGroups _value, $Res Function(_$onGetMyGroups) _then)
      : super(_value, (v) => _then(v as _$onGetMyGroups));

  @override
  _$onGetMyGroups get _value => super._value as _$onGetMyGroups;

  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$onGetMyGroups(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$onGetMyGroups implements onGetMyGroups {
  const _$onGetMyGroups(this.token);

  @override
  final String? token;

  @override
  String toString() {
    return 'GroupsEvent.onGetMyGroups(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onGetMyGroups &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$onGetMyGroupsCopyWith<_$onGetMyGroups> get copyWith =>
      __$$onGetMyGroupsCopyWithImpl<_$onGetMyGroups>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) {
    return onGetMyGroups(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) {
    return onGetMyGroups?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetMyGroups != null) {
      return onGetMyGroups(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) {
    return onGetMyGroups(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) {
    return onGetMyGroups?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetMyGroups != null) {
      return onGetMyGroups(this);
    }
    return orElse();
  }
}

abstract class onGetMyGroups implements GroupsEvent {
  const factory onGetMyGroups(final String? token) = _$onGetMyGroups;

  String? get token => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onGetMyGroupsCopyWith<_$onGetMyGroups> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onGetPostsCopyWith<$Res> {
  factory _$$onGetPostsCopyWith(
          _$onGetPosts value, $Res Function(_$onGetPosts) then) =
      __$$onGetPostsCopyWithImpl<$Res>;
  $Res call({String token, String uuid});
}

/// @nodoc
class __$$onGetPostsCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$$onGetPostsCopyWith<$Res> {
  __$$onGetPostsCopyWithImpl(
      _$onGetPosts _value, $Res Function(_$onGetPosts) _then)
      : super(_value, (v) => _then(v as _$onGetPosts));

  @override
  _$onGetPosts get _value => super._value as _$onGetPosts;

  @override
  $Res call({
    Object? token = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$onGetPosts(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onGetPosts implements onGetPosts {
  const _$onGetPosts(this.token, this.uuid);

  @override
  final String token;
  @override
  final String uuid;

  @override
  String toString() {
    return 'GroupsEvent.onGetPosts(token: $token, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onGetPosts &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$onGetPostsCopyWith<_$onGetPosts> get copyWith =>
      __$$onGetPostsCopyWithImpl<_$onGetPosts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) {
    return onGetPosts(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) {
    return onGetPosts?.call(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetPosts != null) {
      return onGetPosts(token, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) {
    return onGetPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) {
    return onGetPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) {
    if (onGetPosts != null) {
      return onGetPosts(this);
    }
    return orElse();
  }
}

abstract class onGetPosts implements GroupsEvent {
  const factory onGetPosts(final String token, final String uuid) =
      _$onGetPosts;

  String get token => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onGetPostsCopyWith<_$onGetPosts> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onLeaveCopyWith<$Res> {
  factory _$$onLeaveCopyWith(_$onLeave value, $Res Function(_$onLeave) then) =
      __$$onLeaveCopyWithImpl<$Res>;
  $Res call({String token, String uuid});
}

/// @nodoc
class __$$onLeaveCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$$onLeaveCopyWith<$Res> {
  __$$onLeaveCopyWithImpl(_$onLeave _value, $Res Function(_$onLeave) _then)
      : super(_value, (v) => _then(v as _$onLeave));

  @override
  _$onLeave get _value => super._value as _$onLeave;

  @override
  $Res call({
    Object? token = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$onLeave(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onLeave implements onLeave {
  const _$onLeave(this.token, this.uuid);

  @override
  final String token;
  @override
  final String uuid;

  @override
  String toString() {
    return 'GroupsEvent.onLeave(token: $token, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onLeave &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$onLeaveCopyWith<_$onLeave> get copyWith =>
      __$$onLeaveCopyWithImpl<_$onLeave>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) {
    return onLeave(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) {
    return onLeave?.call(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) {
    if (onLeave != null) {
      return onLeave(token, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) {
    return onLeave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) {
    return onLeave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) {
    if (onLeave != null) {
      return onLeave(this);
    }
    return orElse();
  }
}

abstract class onLeave implements GroupsEvent {
  const factory onLeave(final String token, final String uuid) = _$onLeave;

  String get token => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onLeaveCopyWith<_$onLeave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onJoinCopyWith<$Res> {
  factory _$$onJoinCopyWith(_$onJoin value, $Res Function(_$onJoin) then) =
      __$$onJoinCopyWithImpl<$Res>;
  $Res call({String token, String uuid});
}

/// @nodoc
class __$$onJoinCopyWithImpl<$Res> extends _$GroupsEventCopyWithImpl<$Res>
    implements _$$onJoinCopyWith<$Res> {
  __$$onJoinCopyWithImpl(_$onJoin _value, $Res Function(_$onJoin) _then)
      : super(_value, (v) => _then(v as _$onJoin));

  @override
  _$onJoin get _value => super._value as _$onJoin;

  @override
  $Res call({
    Object? token = freezed,
    Object? uuid = freezed,
  }) {
    return _then(_$onJoin(
      token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$onJoin implements onJoin {
  const _$onJoin(this.token, this.uuid);

  @override
  final String token;
  @override
  final String uuid;

  @override
  String toString() {
    return 'GroupsEvent.onJoin(token: $token, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onJoin &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.uuid, uuid));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(uuid));

  @JsonKey(ignore: true)
  @override
  _$$onJoinCopyWith<_$onJoin> get copyWith =>
      __$$onJoinCopyWithImpl<_$onJoin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? token) onGetAll,
    required TResult Function(String? token) onGetMyGroups,
    required TResult Function(String token, String uuid) onGetPosts,
    required TResult Function(String token, String uuid) onLeave,
    required TResult Function(String token, String uuid) onJoin,
  }) {
    return onJoin(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
  }) {
    return onJoin?.call(token, uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? token)? onGetAll,
    TResult Function(String? token)? onGetMyGroups,
    TResult Function(String token, String uuid)? onGetPosts,
    TResult Function(String token, String uuid)? onLeave,
    TResult Function(String token, String uuid)? onJoin,
    required TResult orElse(),
  }) {
    if (onJoin != null) {
      return onJoin(token, uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(onGetAll value) onGetAll,
    required TResult Function(onGetMyGroups value) onGetMyGroups,
    required TResult Function(onGetPosts value) onGetPosts,
    required TResult Function(onLeave value) onLeave,
    required TResult Function(onJoin value) onJoin,
  }) {
    return onJoin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
  }) {
    return onJoin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(onGetAll value)? onGetAll,
    TResult Function(onGetMyGroups value)? onGetMyGroups,
    TResult Function(onGetPosts value)? onGetPosts,
    TResult Function(onLeave value)? onLeave,
    TResult Function(onJoin value)? onJoin,
    required TResult orElse(),
  }) {
    if (onJoin != null) {
      return onJoin(this);
    }
    return orElse();
  }
}

abstract class onJoin implements GroupsEvent {
  const factory onJoin(final String token, final String uuid) = _$onJoin;

  String get token => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$onJoinCopyWith<_$onJoin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GroupsState {
  List<Groups> get groups => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupsStateCopyWith<GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupsStateCopyWith<$Res> {
  factory $GroupsStateCopyWith(
          GroupsState value, $Res Function(GroupsState) then) =
      _$GroupsStateCopyWithImpl<$Res>;
  $Res call({List<Groups> groups, List<Post> posts});
}

/// @nodoc
class _$GroupsStateCopyWithImpl<$Res> implements $GroupsStateCopyWith<$Res> {
  _$GroupsStateCopyWithImpl(this._value, this._then);

  final GroupsState _value;
  // ignore: unused_field
  final $Res Function(GroupsState) _then;

  @override
  $Res call({
    Object? groups = freezed,
    Object? posts = freezed,
  }) {
    return _then(_value.copyWith(
      groups: groups == freezed
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Groups>,
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc
abstract class _$$_GroupsStateCopyWith<$Res>
    implements $GroupsStateCopyWith<$Res> {
  factory _$$_GroupsStateCopyWith(
          _$_GroupsState value, $Res Function(_$_GroupsState) then) =
      __$$_GroupsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Groups> groups, List<Post> posts});
}

/// @nodoc
class __$$_GroupsStateCopyWithImpl<$Res> extends _$GroupsStateCopyWithImpl<$Res>
    implements _$$_GroupsStateCopyWith<$Res> {
  __$$_GroupsStateCopyWithImpl(
      _$_GroupsState _value, $Res Function(_$_GroupsState) _then)
      : super(_value, (v) => _then(v as _$_GroupsState));

  @override
  _$_GroupsState get _value => super._value as _$_GroupsState;

  @override
  $Res call({
    Object? groups = freezed,
    Object? posts = freezed,
  }) {
    return _then(_$_GroupsState(
      groups: groups == freezed
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Groups>,
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_GroupsState implements _GroupsState {
  const _$_GroupsState(
      {required final List<Groups> groups, required final List<Post> posts})
      : _groups = groups,
        _posts = posts;

  final List<Groups> _groups;
  @override
  List<Groups> get groups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<Post> _posts;
  @override
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'GroupsState(groups: $groups, posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupsState &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  _$$_GroupsStateCopyWith<_$_GroupsState> get copyWith =>
      __$$_GroupsStateCopyWithImpl<_$_GroupsState>(this, _$identity);
}

abstract class _GroupsState implements GroupsState {
  const factory _GroupsState(
      {required final List<Groups> groups,
      required final List<Post> posts}) = _$_GroupsState;

  @override
  List<Groups> get groups => throw _privateConstructorUsedError;
  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GroupsStateCopyWith<_$_GroupsState> get copyWith =>
      throw _privateConstructorUsedError;
}
