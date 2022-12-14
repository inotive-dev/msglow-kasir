// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_closing_mail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendClosingMailRequest _$SendClosingMailRequestFromJson(
    Map<String, dynamic> json) {
  return _SendClosingMailRequest.fromJson(json);
}

/// @nodoc
class _$SendClosingMailRequestTearOff {
  const _$SendClosingMailRequestTearOff();

  _SendClosingMailRequest call(
      {@JsonKey(name: 'email') required String email}) {
    return _SendClosingMailRequest(
      email: email,
    );
  }

  SendClosingMailRequest fromJson(Map<String, Object?> json) {
    return SendClosingMailRequest.fromJson(json);
  }
}

/// @nodoc
const $SendClosingMailRequest = _$SendClosingMailRequestTearOff();

/// @nodoc
mixin _$SendClosingMailRequest {
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendClosingMailRequestCopyWith<SendClosingMailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendClosingMailRequestCopyWith<$Res> {
  factory $SendClosingMailRequestCopyWith(SendClosingMailRequest value,
          $Res Function(SendClosingMailRequest) then) =
      _$SendClosingMailRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class _$SendClosingMailRequestCopyWithImpl<$Res>
    implements $SendClosingMailRequestCopyWith<$Res> {
  _$SendClosingMailRequestCopyWithImpl(this._value, this._then);

  final SendClosingMailRequest _value;
  // ignore: unused_field
  final $Res Function(SendClosingMailRequest) _then;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SendClosingMailRequestCopyWith<$Res>
    implements $SendClosingMailRequestCopyWith<$Res> {
  factory _$SendClosingMailRequestCopyWith(_SendClosingMailRequest value,
          $Res Function(_SendClosingMailRequest) then) =
      __$SendClosingMailRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'email') String email});
}

/// @nodoc
class __$SendClosingMailRequestCopyWithImpl<$Res>
    extends _$SendClosingMailRequestCopyWithImpl<$Res>
    implements _$SendClosingMailRequestCopyWith<$Res> {
  __$SendClosingMailRequestCopyWithImpl(_SendClosingMailRequest _value,
      $Res Function(_SendClosingMailRequest) _then)
      : super(_value, (v) => _then(v as _SendClosingMailRequest));

  @override
  _SendClosingMailRequest get _value => super._value as _SendClosingMailRequest;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_SendClosingMailRequest(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendClosingMailRequest implements _SendClosingMailRequest {
  const _$_SendClosingMailRequest(
      {@JsonKey(name: 'email') required this.email});

  factory _$_SendClosingMailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SendClosingMailRequestFromJson(json);

  @override
  @JsonKey(name: 'email')
  final String email;

  @override
  String toString() {
    return 'SendClosingMailRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendClosingMailRequest &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$SendClosingMailRequestCopyWith<_SendClosingMailRequest> get copyWith =>
      __$SendClosingMailRequestCopyWithImpl<_SendClosingMailRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendClosingMailRequestToJson(this);
  }
}

abstract class _SendClosingMailRequest implements SendClosingMailRequest {
  const factory _SendClosingMailRequest(
          {@JsonKey(name: 'email') required String email}) =
      _$_SendClosingMailRequest;

  factory _SendClosingMailRequest.fromJson(Map<String, dynamic> json) =
      _$_SendClosingMailRequest.fromJson;

  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(ignore: true)
  _$SendClosingMailRequestCopyWith<_SendClosingMailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
