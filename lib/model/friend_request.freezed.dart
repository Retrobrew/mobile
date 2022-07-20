// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'friend_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FriendRequest _$FriendRequestFromJson(Map<String, dynamic> json) {
  return _FriendRequest.fromJson(json);
}

/// @nodoc
mixin _$FriendRequest {
  int get id => throw _privateConstructorUsedError;
  User get requester => throw _privateConstructorUsedError;
  String get sentAt => throw _privateConstructorUsedError;
  STATUS get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FriendRequestCopyWith<FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendRequestCopyWith<$Res> {
  factory $FriendRequestCopyWith(
          FriendRequest value, $Res Function(FriendRequest) then) =
      _$FriendRequestCopyWithImpl<$Res>;
  $Res call({int id, User requester, String sentAt, STATUS status});

  $UserCopyWith<$Res> get requester;
}

/// @nodoc
class _$FriendRequestCopyWithImpl<$Res>
    implements $FriendRequestCopyWith<$Res> {
  _$FriendRequestCopyWithImpl(this._value, this._then);

  final FriendRequest _value;
  // ignore: unused_field
  final $Res Function(FriendRequest) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? requester = freezed,
    Object? sentAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as User,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as STATUS,
    ));
  }

  @override
  $UserCopyWith<$Res> get requester {
    return $UserCopyWith<$Res>(_value.requester, (value) {
      return _then(_value.copyWith(requester: value));
    });
  }
}

/// @nodoc
abstract class _$$_FriendRequestCopyWith<$Res>
    implements $FriendRequestCopyWith<$Res> {
  factory _$$_FriendRequestCopyWith(
          _$_FriendRequest value, $Res Function(_$_FriendRequest) then) =
      __$$_FriendRequestCopyWithImpl<$Res>;
  @override
  $Res call({int id, User requester, String sentAt, STATUS status});

  @override
  $UserCopyWith<$Res> get requester;
}

/// @nodoc
class __$$_FriendRequestCopyWithImpl<$Res>
    extends _$FriendRequestCopyWithImpl<$Res>
    implements _$$_FriendRequestCopyWith<$Res> {
  __$$_FriendRequestCopyWithImpl(
      _$_FriendRequest _value, $Res Function(_$_FriendRequest) _then)
      : super(_value, (v) => _then(v as _$_FriendRequest));

  @override
  _$_FriendRequest get _value => super._value as _$_FriendRequest;

  @override
  $Res call({
    Object? id = freezed,
    Object? requester = freezed,
    Object? sentAt = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_FriendRequest(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      requester: requester == freezed
          ? _value.requester
          : requester // ignore: cast_nullable_to_non_nullable
              as User,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as STATUS,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FriendRequest implements _FriendRequest {
  _$_FriendRequest(
      {required this.id,
      required this.requester,
      required this.sentAt,
      required this.status});

  factory _$_FriendRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FriendRequestFromJson(json);

  @override
  final int id;
  @override
  final User requester;
  @override
  final String sentAt;
  @override
  final STATUS status;

  @override
  String toString() {
    return 'FriendRequest(id: $id, requester: $requester, sentAt: $sentAt, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FriendRequest &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.requester, requester) &&
            const DeepCollectionEquality().equals(other.sentAt, sentAt) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(requester),
      const DeepCollectionEquality().hash(sentAt),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_FriendRequestCopyWith<_$_FriendRequest> get copyWith =>
      __$$_FriendRequestCopyWithImpl<_$_FriendRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FriendRequestToJson(this);
  }
}

abstract class _FriendRequest implements FriendRequest {
  factory _FriendRequest(
      {required final int id,
      required final User requester,
      required final String sentAt,
      required final STATUS status}) = _$_FriendRequest;

  factory _FriendRequest.fromJson(Map<String, dynamic> json) =
      _$_FriendRequest.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  User get requester => throw _privateConstructorUsedError;
  @override
  String get sentAt => throw _privateConstructorUsedError;
  @override
  STATUS get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FriendRequestCopyWith<_$_FriendRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
