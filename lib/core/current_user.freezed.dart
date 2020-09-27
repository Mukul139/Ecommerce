// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'current_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress,
      @required bool isemailverified,
      @required ProviderId providerId,
      @required bool isProfileCompleted,
      @required PhoneNumber phoneNumber}) {
    return _User(
      id: id,
      name: name,
      emailAddress: emailAddress,
      isemailverified: isemailverified,
      providerId: providerId,
      isProfileCompleted: isProfileCompleted,
      phoneNumber: phoneNumber,
    );
  }
}

// ignore: unused_element
const $User = _$UserTearOff();

mixin _$User {
  UniqueId get id;
  StringSingleLine get name;
  EmailAddress get emailAddress;
  bool get isemailverified;
  ProviderId get providerId;
  bool get isProfileCompleted;
  PhoneNumber get phoneNumber;

  $UserCopyWith<User> get copyWith;
}

abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      bool isemailverified,
      ProviderId providerId,
      bool isProfileCompleted,
      PhoneNumber phoneNumber});
}

class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object isemailverified = freezed,
    Object providerId = freezed,
    Object isProfileCompleted = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      isemailverified: isemailverified == freezed
          ? _value.isemailverified
          : isemailverified as bool,
      providerId:
          providerId == freezed ? _value.providerId : providerId as ProviderId,
      isProfileCompleted: isProfileCompleted == freezed
          ? _value.isProfileCompleted
          : isProfileCompleted as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
    ));
  }
}

abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      StringSingleLine name,
      EmailAddress emailAddress,
      bool isemailverified,
      ProviderId providerId,
      bool isProfileCompleted,
      PhoneNumber phoneNumber});
}

class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object emailAddress = freezed,
    Object isemailverified = freezed,
    Object providerId = freezed,
    Object isProfileCompleted = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      isemailverified: isemailverified == freezed
          ? _value.isemailverified
          : isemailverified as bool,
      providerId:
          providerId == freezed ? _value.providerId : providerId as ProviderId,
      isProfileCompleted: isProfileCompleted == freezed
          ? _value.isProfileCompleted
          : isProfileCompleted as bool,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
    ));
  }
}

class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.emailAddress,
      @required this.isemailverified,
      @required this.providerId,
      @required this.isProfileCompleted,
      @required this.phoneNumber})
      : assert(id != null),
        assert(name != null),
        assert(emailAddress != null),
        assert(isemailverified != null),
        assert(providerId != null),
        assert(isProfileCompleted != null),
        assert(phoneNumber != null);

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress emailAddress;
  @override
  final bool isemailverified;
  @override
  final ProviderId providerId;
  @override
  final bool isProfileCompleted;
  @override
  final PhoneNumber phoneNumber;

  @override
  String toString() {
    return 'User(id: $id, name: $name, emailAddress: $emailAddress, isemailverified: $isemailverified, providerId: $providerId, isProfileCompleted: $isProfileCompleted, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.isemailverified, isemailverified) ||
                const DeepCollectionEquality()
                    .equals(other.isemailverified, isemailverified)) &&
            (identical(other.providerId, providerId) ||
                const DeepCollectionEquality()
                    .equals(other.providerId, providerId)) &&
            (identical(other.isProfileCompleted, isProfileCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isProfileCompleted, isProfileCompleted)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(isemailverified) ^
      const DeepCollectionEquality().hash(providerId) ^
      const DeepCollectionEquality().hash(isProfileCompleted) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required StringSingleLine name,
      @required EmailAddress emailAddress,
      @required bool isemailverified,
      @required ProviderId providerId,
      @required bool isProfileCompleted,
      @required PhoneNumber phoneNumber}) = _$_User;

  @override
  UniqueId get id;
  @override
  StringSingleLine get name;
  @override
  EmailAddress get emailAddress;
  @override
  bool get isemailverified;
  @override
  ProviderId get providerId;
  @override
  bool get isProfileCompleted;
  @override
  PhoneNumber get phoneNumber;
  @override
  _$UserCopyWith<_User> get copyWith;
}
