// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'forgetPassword_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ForgetPasswordEventTearOff {
  const _$ForgetPasswordEventTearOff();

// ignore: unused_element
  SendPasswordForgetMail sendPasswordForgetMail(
      {@required String emailAddress}) {
    return SendPasswordForgetMail(
      emailAddress: emailAddress,
    );
  }

// ignore: unused_element
  ShowForgetPasswordDialogBox showForgetPasswordDialogBox() {
    return const ShowForgetPasswordDialogBox();
  }

// ignore: unused_element
  SendEmailVerification sendEmailVerificationLink() {
    return const SendEmailVerification();
  }

// ignore: unused_element
  CancelledDialogBox cancelledDialogBox() {
    return const CancelledDialogBox();
  }
}

// ignore: unused_element
const $ForgetPasswordEvent = _$ForgetPasswordEventTearOff();

mixin _$ForgetPasswordEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendPasswordForgetMail(String emailAddress),
    @required Result showForgetPasswordDialogBox(),
    @required Result sendEmailVerificationLink(),
    @required Result cancelledDialogBox(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendPasswordForgetMail(String emailAddress),
    Result showForgetPasswordDialogBox(),
    Result sendEmailVerificationLink(),
    Result cancelledDialogBox(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendPasswordForgetMail(SendPasswordForgetMail value),
    @required
        Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    @required Result sendEmailVerificationLink(SendEmailVerification value),
    @required Result cancelledDialogBox(CancelledDialogBox value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendPasswordForgetMail(SendPasswordForgetMail value),
    Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    Result sendEmailVerificationLink(SendEmailVerification value),
    Result cancelledDialogBox(CancelledDialogBox value),
    @required Result orElse(),
  });
}

abstract class $ForgetPasswordEventCopyWith<$Res> {
  factory $ForgetPasswordEventCopyWith(
          ForgetPasswordEvent value, $Res Function(ForgetPasswordEvent) then) =
      _$ForgetPasswordEventCopyWithImpl<$Res>;
}

class _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $ForgetPasswordEventCopyWith<$Res> {
  _$ForgetPasswordEventCopyWithImpl(this._value, this._then);

  final ForgetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ForgetPasswordEvent) _then;
}

abstract class $SendPasswordForgetMailCopyWith<$Res> {
  factory $SendPasswordForgetMailCopyWith(SendPasswordForgetMail value,
          $Res Function(SendPasswordForgetMail) then) =
      _$SendPasswordForgetMailCopyWithImpl<$Res>;
  $Res call({String emailAddress});
}

class _$SendPasswordForgetMailCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $SendPasswordForgetMailCopyWith<$Res> {
  _$SendPasswordForgetMailCopyWithImpl(SendPasswordForgetMail _value,
      $Res Function(SendPasswordForgetMail) _then)
      : super(_value, (v) => _then(v as SendPasswordForgetMail));

  @override
  SendPasswordForgetMail get _value => super._value as SendPasswordForgetMail;

  @override
  $Res call({
    Object emailAddress = freezed,
  }) {
    return _then(SendPasswordForgetMail(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as String,
    ));
  }
}

class _$SendPasswordForgetMail implements SendPasswordForgetMail {
  const _$SendPasswordForgetMail({@required this.emailAddress})
      : assert(emailAddress != null);

  @override
  final String emailAddress;

  @override
  String toString() {
    return 'ForgetPasswordEvent.sendPasswordForgetMail(emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SendPasswordForgetMail &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailAddress);

  @override
  $SendPasswordForgetMailCopyWith<SendPasswordForgetMail> get copyWith =>
      _$SendPasswordForgetMailCopyWithImpl<SendPasswordForgetMail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendPasswordForgetMail(String emailAddress),
    @required Result showForgetPasswordDialogBox(),
    @required Result sendEmailVerificationLink(),
    @required Result cancelledDialogBox(),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return sendPasswordForgetMail(emailAddress);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendPasswordForgetMail(String emailAddress),
    Result showForgetPasswordDialogBox(),
    Result sendEmailVerificationLink(),
    Result cancelledDialogBox(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendPasswordForgetMail != null) {
      return sendPasswordForgetMail(emailAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendPasswordForgetMail(SendPasswordForgetMail value),
    @required
        Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    @required Result sendEmailVerificationLink(SendEmailVerification value),
    @required Result cancelledDialogBox(CancelledDialogBox value),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return sendPasswordForgetMail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendPasswordForgetMail(SendPasswordForgetMail value),
    Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    Result sendEmailVerificationLink(SendEmailVerification value),
    Result cancelledDialogBox(CancelledDialogBox value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendPasswordForgetMail != null) {
      return sendPasswordForgetMail(this);
    }
    return orElse();
  }
}

abstract class SendPasswordForgetMail implements ForgetPasswordEvent {
  const factory SendPasswordForgetMail({@required String emailAddress}) =
      _$SendPasswordForgetMail;

  String get emailAddress;
  $SendPasswordForgetMailCopyWith<SendPasswordForgetMail> get copyWith;
}

abstract class $ShowForgetPasswordDialogBoxCopyWith<$Res> {
  factory $ShowForgetPasswordDialogBoxCopyWith(
          ShowForgetPasswordDialogBox value,
          $Res Function(ShowForgetPasswordDialogBox) then) =
      _$ShowForgetPasswordDialogBoxCopyWithImpl<$Res>;
}

class _$ShowForgetPasswordDialogBoxCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $ShowForgetPasswordDialogBoxCopyWith<$Res> {
  _$ShowForgetPasswordDialogBoxCopyWithImpl(ShowForgetPasswordDialogBox _value,
      $Res Function(ShowForgetPasswordDialogBox) _then)
      : super(_value, (v) => _then(v as ShowForgetPasswordDialogBox));

  @override
  ShowForgetPasswordDialogBox get _value =>
      super._value as ShowForgetPasswordDialogBox;
}

class _$ShowForgetPasswordDialogBox implements ShowForgetPasswordDialogBox {
  const _$ShowForgetPasswordDialogBox();

  @override
  String toString() {
    return 'ForgetPasswordEvent.showForgetPasswordDialogBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowForgetPasswordDialogBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendPasswordForgetMail(String emailAddress),
    @required Result showForgetPasswordDialogBox(),
    @required Result sendEmailVerificationLink(),
    @required Result cancelledDialogBox(),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return showForgetPasswordDialogBox();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendPasswordForgetMail(String emailAddress),
    Result showForgetPasswordDialogBox(),
    Result sendEmailVerificationLink(),
    Result cancelledDialogBox(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showForgetPasswordDialogBox != null) {
      return showForgetPasswordDialogBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendPasswordForgetMail(SendPasswordForgetMail value),
    @required
        Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    @required Result sendEmailVerificationLink(SendEmailVerification value),
    @required Result cancelledDialogBox(CancelledDialogBox value),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return showForgetPasswordDialogBox(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendPasswordForgetMail(SendPasswordForgetMail value),
    Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    Result sendEmailVerificationLink(SendEmailVerification value),
    Result cancelledDialogBox(CancelledDialogBox value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showForgetPasswordDialogBox != null) {
      return showForgetPasswordDialogBox(this);
    }
    return orElse();
  }
}

abstract class ShowForgetPasswordDialogBox implements ForgetPasswordEvent {
  const factory ShowForgetPasswordDialogBox() = _$ShowForgetPasswordDialogBox;
}

abstract class $SendEmailVerificationCopyWith<$Res> {
  factory $SendEmailVerificationCopyWith(SendEmailVerification value,
          $Res Function(SendEmailVerification) then) =
      _$SendEmailVerificationCopyWithImpl<$Res>;
}

class _$SendEmailVerificationCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $SendEmailVerificationCopyWith<$Res> {
  _$SendEmailVerificationCopyWithImpl(
      SendEmailVerification _value, $Res Function(SendEmailVerification) _then)
      : super(_value, (v) => _then(v as SendEmailVerification));

  @override
  SendEmailVerification get _value => super._value as SendEmailVerification;
}

class _$SendEmailVerification implements SendEmailVerification {
  const _$SendEmailVerification();

  @override
  String toString() {
    return 'ForgetPasswordEvent.sendEmailVerificationLink()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SendEmailVerification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendPasswordForgetMail(String emailAddress),
    @required Result showForgetPasswordDialogBox(),
    @required Result sendEmailVerificationLink(),
    @required Result cancelledDialogBox(),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return sendEmailVerificationLink();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendPasswordForgetMail(String emailAddress),
    Result showForgetPasswordDialogBox(),
    Result sendEmailVerificationLink(),
    Result cancelledDialogBox(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailVerificationLink != null) {
      return sendEmailVerificationLink();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendPasswordForgetMail(SendPasswordForgetMail value),
    @required
        Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    @required Result sendEmailVerificationLink(SendEmailVerification value),
    @required Result cancelledDialogBox(CancelledDialogBox value),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return sendEmailVerificationLink(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendPasswordForgetMail(SendPasswordForgetMail value),
    Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    Result sendEmailVerificationLink(SendEmailVerification value),
    Result cancelledDialogBox(CancelledDialogBox value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (sendEmailVerificationLink != null) {
      return sendEmailVerificationLink(this);
    }
    return orElse();
  }
}

abstract class SendEmailVerification implements ForgetPasswordEvent {
  const factory SendEmailVerification() = _$SendEmailVerification;
}

abstract class $CancelledDialogBoxCopyWith<$Res> {
  factory $CancelledDialogBoxCopyWith(
          CancelledDialogBox value, $Res Function(CancelledDialogBox) then) =
      _$CancelledDialogBoxCopyWithImpl<$Res>;
}

class _$CancelledDialogBoxCopyWithImpl<$Res>
    extends _$ForgetPasswordEventCopyWithImpl<$Res>
    implements $CancelledDialogBoxCopyWith<$Res> {
  _$CancelledDialogBoxCopyWithImpl(
      CancelledDialogBox _value, $Res Function(CancelledDialogBox) _then)
      : super(_value, (v) => _then(v as CancelledDialogBox));

  @override
  CancelledDialogBox get _value => super._value as CancelledDialogBox;
}

class _$CancelledDialogBox implements CancelledDialogBox {
  const _$CancelledDialogBox();

  @override
  String toString() {
    return 'ForgetPasswordEvent.cancelledDialogBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledDialogBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result sendPasswordForgetMail(String emailAddress),
    @required Result showForgetPasswordDialogBox(),
    @required Result sendEmailVerificationLink(),
    @required Result cancelledDialogBox(),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return cancelledDialogBox();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result sendPasswordForgetMail(String emailAddress),
    Result showForgetPasswordDialogBox(),
    Result sendEmailVerificationLink(),
    Result cancelledDialogBox(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledDialogBox != null) {
      return cancelledDialogBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result sendPasswordForgetMail(SendPasswordForgetMail value),
    @required
        Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    @required Result sendEmailVerificationLink(SendEmailVerification value),
    @required Result cancelledDialogBox(CancelledDialogBox value),
  }) {
    assert(sendPasswordForgetMail != null);
    assert(showForgetPasswordDialogBox != null);
    assert(sendEmailVerificationLink != null);
    assert(cancelledDialogBox != null);
    return cancelledDialogBox(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result sendPasswordForgetMail(SendPasswordForgetMail value),
    Result showForgetPasswordDialogBox(ShowForgetPasswordDialogBox value),
    Result sendEmailVerificationLink(SendEmailVerification value),
    Result cancelledDialogBox(CancelledDialogBox value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledDialogBox != null) {
      return cancelledDialogBox(this);
    }
    return orElse();
  }
}

abstract class CancelledDialogBox implements ForgetPasswordEvent {
  const factory CancelledDialogBox() = _$CancelledDialogBox;
}

class _$ForgetPasswordStateTearOff {
  const _$ForgetPasswordStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  ShowDialogBox showDialogBox() {
    return const ShowDialogBox();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  LinkSendSuccessfully linkSendSuccessfully({@required String message}) {
    return LinkSendSuccessfully(
      message: message,
    );
  }

// ignore: unused_element
  InvalidMail invalidMail() {
    return const InvalidMail();
  }

// ignore: unused_element
  Cancelled cancelled() {
    return const Cancelled();
  }
}

// ignore: unused_element
const $ForgetPasswordState = _$ForgetPasswordStateTearOff();

mixin _$ForgetPasswordState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  });
}

abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res>;
}

class _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  final ForgetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ForgetPasswordState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ForgetPasswordState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ForgetPasswordState {
  const factory Initial() = _$Initial;
}

abstract class $ShowDialogBoxCopyWith<$Res> {
  factory $ShowDialogBoxCopyWith(
          ShowDialogBox value, $Res Function(ShowDialogBox) then) =
      _$ShowDialogBoxCopyWithImpl<$Res>;
}

class _$ShowDialogBoxCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $ShowDialogBoxCopyWith<$Res> {
  _$ShowDialogBoxCopyWithImpl(
      ShowDialogBox _value, $Res Function(ShowDialogBox) _then)
      : super(_value, (v) => _then(v as ShowDialogBox));

  @override
  ShowDialogBox get _value => super._value as ShowDialogBox;
}

class _$ShowDialogBox implements ShowDialogBox {
  const _$ShowDialogBox();

  @override
  String toString() {
    return 'ForgetPasswordState.showDialogBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowDialogBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return showDialogBox();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showDialogBox != null) {
      return showDialogBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return showDialogBox(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (showDialogBox != null) {
      return showDialogBox(this);
    }
    return orElse();
  }
}

abstract class ShowDialogBox implements ForgetPasswordState {
  const factory ShowDialogBox() = _$ShowDialogBox;
}

abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

class _$ServerErrorCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ForgetPasswordState.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ForgetPasswordState {
  const factory ServerError() = _$ServerError;
}

abstract class $LinkSendSuccessfullyCopyWith<$Res> {
  factory $LinkSendSuccessfullyCopyWith(LinkSendSuccessfully value,
          $Res Function(LinkSendSuccessfully) then) =
      _$LinkSendSuccessfullyCopyWithImpl<$Res>;
  $Res call({String message});
}

class _$LinkSendSuccessfullyCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $LinkSendSuccessfullyCopyWith<$Res> {
  _$LinkSendSuccessfullyCopyWithImpl(
      LinkSendSuccessfully _value, $Res Function(LinkSendSuccessfully) _then)
      : super(_value, (v) => _then(v as LinkSendSuccessfully));

  @override
  LinkSendSuccessfully get _value => super._value as LinkSendSuccessfully;

  @override
  $Res call({
    Object message = freezed,
  }) {
    return _then(LinkSendSuccessfully(
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

class _$LinkSendSuccessfully implements LinkSendSuccessfully {
  const _$LinkSendSuccessfully({@required this.message})
      : assert(message != null);

  @override
  final String message;

  @override
  String toString() {
    return 'ForgetPasswordState.linkSendSuccessfully(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LinkSendSuccessfully &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @override
  $LinkSendSuccessfullyCopyWith<LinkSendSuccessfully> get copyWith =>
      _$LinkSendSuccessfullyCopyWithImpl<LinkSendSuccessfully>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return linkSendSuccessfully(message);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkSendSuccessfully != null) {
      return linkSendSuccessfully(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return linkSendSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (linkSendSuccessfully != null) {
      return linkSendSuccessfully(this);
    }
    return orElse();
  }
}

abstract class LinkSendSuccessfully implements ForgetPasswordState {
  const factory LinkSendSuccessfully({@required String message}) =
      _$LinkSendSuccessfully;

  String get message;
  $LinkSendSuccessfullyCopyWith<LinkSendSuccessfully> get copyWith;
}

abstract class $InvalidMailCopyWith<$Res> {
  factory $InvalidMailCopyWith(
          InvalidMail value, $Res Function(InvalidMail) then) =
      _$InvalidMailCopyWithImpl<$Res>;
}

class _$InvalidMailCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $InvalidMailCopyWith<$Res> {
  _$InvalidMailCopyWithImpl(
      InvalidMail _value, $Res Function(InvalidMail) _then)
      : super(_value, (v) => _then(v as InvalidMail));

  @override
  InvalidMail get _value => super._value as InvalidMail;
}

class _$InvalidMail implements InvalidMail {
  const _$InvalidMail();

  @override
  String toString() {
    return 'ForgetPasswordState.invalidMail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidMail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return invalidMail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidMail != null) {
      return invalidMail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return invalidMail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidMail != null) {
      return invalidMail(this);
    }
    return orElse();
  }
}

abstract class InvalidMail implements ForgetPasswordState {
  const factory InvalidMail() = _$InvalidMail;
}

abstract class $CancelledCopyWith<$Res> {
  factory $CancelledCopyWith(Cancelled value, $Res Function(Cancelled) then) =
      _$CancelledCopyWithImpl<$Res>;
}

class _$CancelledCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res>
    implements $CancelledCopyWith<$Res> {
  _$CancelledCopyWithImpl(Cancelled _value, $Res Function(Cancelled) _then)
      : super(_value, (v) => _then(v as Cancelled));

  @override
  Cancelled get _value => super._value as Cancelled;
}

class _$Cancelled implements Cancelled {
  const _$Cancelled();

  @override
  String toString() {
    return 'ForgetPasswordState.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result showDialogBox(),
    @required Result serverError(),
    @required Result linkSendSuccessfully(String message),
    @required Result invalidMail(),
    @required Result cancelled(),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return cancelled();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result showDialogBox(),
    Result serverError(),
    Result linkSendSuccessfully(String message),
    Result invalidMail(),
    Result cancelled(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result showDialogBox(ShowDialogBox value),
    @required Result serverError(ServerError value),
    @required Result linkSendSuccessfully(LinkSendSuccessfully value),
    @required Result invalidMail(InvalidMail value),
    @required Result cancelled(Cancelled value),
  }) {
    assert(initial != null);
    assert(showDialogBox != null);
    assert(serverError != null);
    assert(linkSendSuccessfully != null);
    assert(invalidMail != null);
    assert(cancelled != null);
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result showDialogBox(ShowDialogBox value),
    Result serverError(ServerError value),
    Result linkSendSuccessfully(LinkSendSuccessfully value),
    Result invalidMail(InvalidMail value),
    Result cancelled(Cancelled value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements ForgetPasswordState {
  const factory Cancelled() = _$Cancelled;
}
