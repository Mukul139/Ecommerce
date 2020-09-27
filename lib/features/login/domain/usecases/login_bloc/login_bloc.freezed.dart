// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  EmailChanged emailChanged(String emailStr) {
    return EmailChanged(
      emailStr,
    );
  }

// ignore: unused_element
  PasswordChanged passwordChanged(String passwordStr) {
    return PasswordChanged(
      passwordStr,
    );
  }

// ignore: unused_element
  RegisterWithEmailAndPasswordPressed registerWithEmailAndPasswordPressed() {
    return const RegisterWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  SignInWithEmailAndPasswordPressed signInWithEmailAndPasswordPressed() {
    return const SignInWithEmailAndPasswordPressed();
  }

// ignore: unused_element
  SignInWithGooglePressed signInWithGooglePressed() {
    return const SignInWithGooglePressed();
  }

// ignore: unused_element
  SignInWithFacebookPressed signInWithFacebookPressed() {
    return const SignInWithFacebookPressed();
  }

// ignore: unused_element
  SignInWithPhone signInWithPhone() {
    return const SignInWithPhone();
  }

// ignore: unused_element
  SubmittedOtp submittedOtp() {
    return const SubmittedOtp();
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumberStr) {
    return PhoneNumberChanged(
      phoneNumberStr,
    );
  }

// ignore: unused_element
  OtpChanged otpChanged(String otpStr) {
    return OtpChanged(
      otpStr,
    );
  }

// ignore: unused_element
  HideDialogBox hideDialogBox() {
    return const HideDialogBox();
  }

// ignore: unused_element
  RecievedPhoneAuthState recievedPhoneAuthState(
      {PhoneAuthStatus phoneAuthStatus}) {
    return RecievedPhoneAuthState(
      phoneAuthStatus: phoneAuthStatus,
    );
  }
}

// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

mixin _$LoginEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  });
}

abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String emailStr});
}

class _$EmailChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object emailStr = freezed,
  }) {
    return _then(EmailChanged(
      emailStr == freezed ? _value.emailStr : emailStr as String,
    ));
  }
}

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailStr) : assert(emailStr != null);

  @override
  final String emailStr;

  @override
  String toString() {
    return 'LoginEvent.emailChanged(emailStr: $emailStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.emailStr, emailStr) ||
                const DeepCollectionEquality()
                    .equals(other.emailStr, emailStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(emailStr);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return emailChanged(emailStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(emailStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements LoginEvent {
  const factory EmailChanged(String emailStr) = _$EmailChanged;

  String get emailStr;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordStr});
}

class _$PasswordChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object passwordStr = freezed,
  }) {
    return _then(PasswordChanged(
      passwordStr == freezed ? _value.passwordStr : passwordStr as String,
    ));
  }
}

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordStr) : assert(passwordStr != null);

  @override
  final String passwordStr;

  @override
  String toString() {
    return 'LoginEvent.passwordChanged(passwordStr: $passwordStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordChanged &&
            (identical(other.passwordStr, passwordStr) ||
                const DeepCollectionEquality()
                    .equals(other.passwordStr, passwordStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(passwordStr);

  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return passwordChanged(passwordStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(passwordStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements LoginEvent {
  const factory PasswordChanged(String passwordStr) = _$PasswordChanged;

  String get passwordStr;
  $PasswordChangedCopyWith<PasswordChanged> get copyWith;
}

abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements LoginEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

abstract class $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SignInWithEmailAndPasswordPressedCopyWith(
          SignInWithEmailAndPasswordPressed value,
          $Res Function(SignInWithEmailAndPasswordPressed) then) =
      _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

class _$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SignInWithEmailAndPasswordPressedCopyWithImpl(
      SignInWithEmailAndPasswordPressed _value,
      $Res Function(SignInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailAndPasswordPressed));

  @override
  SignInWithEmailAndPasswordPressed get _value =>
      super._value as SignInWithEmailAndPasswordPressed;
}

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'LoginEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements LoginEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

abstract class $SignInWithGooglePressedCopyWith<$Res> {
  factory $SignInWithGooglePressedCopyWith(SignInWithGooglePressed value,
          $Res Function(SignInWithGooglePressed) then) =
      _$SignInWithGooglePressedCopyWithImpl<$Res>;
}

class _$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInWithGooglePressedCopyWith<$Res> {
  _$SignInWithGooglePressedCopyWithImpl(SignInWithGooglePressed _value,
      $Res Function(SignInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SignInWithGooglePressed));

  @override
  SignInWithGooglePressed get _value => super._value as SignInWithGooglePressed;
}

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'LoginEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements LoginEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

abstract class $SignInWithFacebookPressedCopyWith<$Res> {
  factory $SignInWithFacebookPressedCopyWith(SignInWithFacebookPressed value,
          $Res Function(SignInWithFacebookPressed) then) =
      _$SignInWithFacebookPressedCopyWithImpl<$Res>;
}

class _$SignInWithFacebookPressedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInWithFacebookPressedCopyWith<$Res> {
  _$SignInWithFacebookPressedCopyWithImpl(SignInWithFacebookPressed _value,
      $Res Function(SignInWithFacebookPressed) _then)
      : super(_value, (v) => _then(v as SignInWithFacebookPressed));

  @override
  SignInWithFacebookPressed get _value =>
      super._value as SignInWithFacebookPressed;
}

class _$SignInWithFacebookPressed implements SignInWithFacebookPressed {
  const _$SignInWithFacebookPressed();

  @override
  String toString() {
    return 'LoginEvent.signInWithFacebookPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithFacebookPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithFacebookPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithFacebookPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithFacebookPressed != null) {
      return signInWithFacebookPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithFacebookPressed implements LoginEvent {
  const factory SignInWithFacebookPressed() = _$SignInWithFacebookPressed;
}

abstract class $SignInWithPhoneCopyWith<$Res> {
  factory $SignInWithPhoneCopyWith(
          SignInWithPhone value, $Res Function(SignInWithPhone) then) =
      _$SignInWithPhoneCopyWithImpl<$Res>;
}

class _$SignInWithPhoneCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SignInWithPhoneCopyWith<$Res> {
  _$SignInWithPhoneCopyWithImpl(
      SignInWithPhone _value, $Res Function(SignInWithPhone) _then)
      : super(_value, (v) => _then(v as SignInWithPhone));

  @override
  SignInWithPhone get _value => super._value as SignInWithPhone;
}

class _$SignInWithPhone implements SignInWithPhone {
  const _$SignInWithPhone();

  @override
  String toString() {
    return 'LoginEvent.signInWithPhone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithPhone();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithPhone != null) {
      return signInWithPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return signInWithPhone(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithPhone != null) {
      return signInWithPhone(this);
    }
    return orElse();
  }
}

abstract class SignInWithPhone implements LoginEvent {
  const factory SignInWithPhone() = _$SignInWithPhone;
}

abstract class $SubmittedOtpCopyWith<$Res> {
  factory $SubmittedOtpCopyWith(
          SubmittedOtp value, $Res Function(SubmittedOtp) then) =
      _$SubmittedOtpCopyWithImpl<$Res>;
}

class _$SubmittedOtpCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmittedOtpCopyWith<$Res> {
  _$SubmittedOtpCopyWithImpl(
      SubmittedOtp _value, $Res Function(SubmittedOtp) _then)
      : super(_value, (v) => _then(v as SubmittedOtp));

  @override
  SubmittedOtp get _value => super._value as SubmittedOtp;
}

class _$SubmittedOtp implements SubmittedOtp {
  const _$SubmittedOtp();

  @override
  String toString() {
    return 'LoginEvent.submittedOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmittedOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return submittedOtp();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedOtp != null) {
      return submittedOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return submittedOtp(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (submittedOtp != null) {
      return submittedOtp(this);
    }
    return orElse();
  }
}

abstract class SubmittedOtp implements LoginEvent {
  const factory SubmittedOtp() = _$SubmittedOtp;
}

abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumberStr});
}

class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumberStr = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumberStr == freezed
          ? _value.phoneNumberStr
          : phoneNumberStr as String,
    ));
  }
}

class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumberStr)
      : assert(phoneNumberStr != null);

  @override
  final String phoneNumberStr;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumberStr: $phoneNumberStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumberStr, phoneNumberStr) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumberStr, phoneNumberStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumberStr);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return phoneNumberChanged(phoneNumberStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumberStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements LoginEvent {
  const factory PhoneNumberChanged(String phoneNumberStr) =
      _$PhoneNumberChanged;

  String get phoneNumberStr;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

abstract class $OtpChangedCopyWith<$Res> {
  factory $OtpChangedCopyWith(
          OtpChanged value, $Res Function(OtpChanged) then) =
      _$OtpChangedCopyWithImpl<$Res>;
  $Res call({String otpStr});
}

class _$OtpChangedCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $OtpChangedCopyWith<$Res> {
  _$OtpChangedCopyWithImpl(OtpChanged _value, $Res Function(OtpChanged) _then)
      : super(_value, (v) => _then(v as OtpChanged));

  @override
  OtpChanged get _value => super._value as OtpChanged;

  @override
  $Res call({
    Object otpStr = freezed,
  }) {
    return _then(OtpChanged(
      otpStr == freezed ? _value.otpStr : otpStr as String,
    ));
  }
}

class _$OtpChanged implements OtpChanged {
  const _$OtpChanged(this.otpStr) : assert(otpStr != null);

  @override
  final String otpStr;

  @override
  String toString() {
    return 'LoginEvent.otpChanged(otpStr: $otpStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OtpChanged &&
            (identical(other.otpStr, otpStr) ||
                const DeepCollectionEquality().equals(other.otpStr, otpStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(otpStr);

  @override
  $OtpChangedCopyWith<OtpChanged> get copyWith =>
      _$OtpChangedCopyWithImpl<OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return otpChanged(otpStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(otpStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class OtpChanged implements LoginEvent {
  const factory OtpChanged(String otpStr) = _$OtpChanged;

  String get otpStr;
  $OtpChangedCopyWith<OtpChanged> get copyWith;
}

abstract class $HideDialogBoxCopyWith<$Res> {
  factory $HideDialogBoxCopyWith(
          HideDialogBox value, $Res Function(HideDialogBox) then) =
      _$HideDialogBoxCopyWithImpl<$Res>;
}

class _$HideDialogBoxCopyWithImpl<$Res> extends _$LoginEventCopyWithImpl<$Res>
    implements $HideDialogBoxCopyWith<$Res> {
  _$HideDialogBoxCopyWithImpl(
      HideDialogBox _value, $Res Function(HideDialogBox) _then)
      : super(_value, (v) => _then(v as HideDialogBox));

  @override
  HideDialogBox get _value => super._value as HideDialogBox;
}

class _$HideDialogBox implements HideDialogBox {
  const _$HideDialogBox();

  @override
  String toString() {
    return 'LoginEvent.hideDialogBox()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HideDialogBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return hideDialogBox();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideDialogBox != null) {
      return hideDialogBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return hideDialogBox(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (hideDialogBox != null) {
      return hideDialogBox(this);
    }
    return orElse();
  }
}

abstract class HideDialogBox implements LoginEvent {
  const factory HideDialogBox() = _$HideDialogBox;
}

abstract class $RecievedPhoneAuthStateCopyWith<$Res> {
  factory $RecievedPhoneAuthStateCopyWith(RecievedPhoneAuthState value,
          $Res Function(RecievedPhoneAuthState) then) =
      _$RecievedPhoneAuthStateCopyWithImpl<$Res>;
  $Res call({PhoneAuthStatus phoneAuthStatus});
}

class _$RecievedPhoneAuthStateCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $RecievedPhoneAuthStateCopyWith<$Res> {
  _$RecievedPhoneAuthStateCopyWithImpl(RecievedPhoneAuthState _value,
      $Res Function(RecievedPhoneAuthState) _then)
      : super(_value, (v) => _then(v as RecievedPhoneAuthState));

  @override
  RecievedPhoneAuthState get _value => super._value as RecievedPhoneAuthState;

  @override
  $Res call({
    Object phoneAuthStatus = freezed,
  }) {
    return _then(RecievedPhoneAuthState(
      phoneAuthStatus: phoneAuthStatus == freezed
          ? _value.phoneAuthStatus
          : phoneAuthStatus as PhoneAuthStatus,
    ));
  }
}

class _$RecievedPhoneAuthState implements RecievedPhoneAuthState {
  const _$RecievedPhoneAuthState({this.phoneAuthStatus});

  @override
  final PhoneAuthStatus phoneAuthStatus;

  @override
  String toString() {
    return 'LoginEvent.recievedPhoneAuthState(phoneAuthStatus: $phoneAuthStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RecievedPhoneAuthState &&
            (identical(other.phoneAuthStatus, phoneAuthStatus) ||
                const DeepCollectionEquality()
                    .equals(other.phoneAuthStatus, phoneAuthStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneAuthStatus);

  @override
  $RecievedPhoneAuthStateCopyWith<RecievedPhoneAuthState> get copyWith =>
      _$RecievedPhoneAuthStateCopyWithImpl<RecievedPhoneAuthState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result emailChanged(String emailStr),
    @required Result passwordChanged(String passwordStr),
    @required Result registerWithEmailAndPasswordPressed(),
    @required Result signInWithEmailAndPasswordPressed(),
    @required Result signInWithGooglePressed(),
    @required Result signInWithFacebookPressed(),
    @required Result signInWithPhone(),
    @required Result submittedOtp(),
    @required Result phoneNumberChanged(String phoneNumberStr),
    @required Result otpChanged(String otpStr),
    @required Result hideDialogBox(),
    @required Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return recievedPhoneAuthState(phoneAuthStatus);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result emailChanged(String emailStr),
    Result passwordChanged(String passwordStr),
    Result registerWithEmailAndPasswordPressed(),
    Result signInWithEmailAndPasswordPressed(),
    Result signInWithGooglePressed(),
    Result signInWithFacebookPressed(),
    Result signInWithPhone(),
    Result submittedOtp(),
    Result phoneNumberChanged(String phoneNumberStr),
    Result otpChanged(String otpStr),
    Result hideDialogBox(),
    Result recievedPhoneAuthState(PhoneAuthStatus phoneAuthStatus),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recievedPhoneAuthState != null) {
      return recievedPhoneAuthState(phoneAuthStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result emailChanged(EmailChanged value),
    @required Result passwordChanged(PasswordChanged value),
    @required
        Result registerWithEmailAndPasswordPressed(
            RegisterWithEmailAndPasswordPressed value),
    @required
        Result signInWithEmailAndPasswordPressed(
            SignInWithEmailAndPasswordPressed value),
    @required Result signInWithGooglePressed(SignInWithGooglePressed value),
    @required Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    @required Result signInWithPhone(SignInWithPhone value),
    @required Result submittedOtp(SubmittedOtp value),
    @required Result phoneNumberChanged(PhoneNumberChanged value),
    @required Result otpChanged(OtpChanged value),
    @required Result hideDialogBox(HideDialogBox value),
    @required Result recievedPhoneAuthState(RecievedPhoneAuthState value),
  }) {
    assert(emailChanged != null);
    assert(passwordChanged != null);
    assert(registerWithEmailAndPasswordPressed != null);
    assert(signInWithEmailAndPasswordPressed != null);
    assert(signInWithGooglePressed != null);
    assert(signInWithFacebookPressed != null);
    assert(signInWithPhone != null);
    assert(submittedOtp != null);
    assert(phoneNumberChanged != null);
    assert(otpChanged != null);
    assert(hideDialogBox != null);
    assert(recievedPhoneAuthState != null);
    return recievedPhoneAuthState(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result emailChanged(EmailChanged value),
    Result passwordChanged(PasswordChanged value),
    Result registerWithEmailAndPasswordPressed(
        RegisterWithEmailAndPasswordPressed value),
    Result signInWithEmailAndPasswordPressed(
        SignInWithEmailAndPasswordPressed value),
    Result signInWithGooglePressed(SignInWithGooglePressed value),
    Result signInWithFacebookPressed(SignInWithFacebookPressed value),
    Result signInWithPhone(SignInWithPhone value),
    Result submittedOtp(SubmittedOtp value),
    Result phoneNumberChanged(PhoneNumberChanged value),
    Result otpChanged(OtpChanged value),
    Result hideDialogBox(HideDialogBox value),
    Result recievedPhoneAuthState(RecievedPhoneAuthState value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (recievedPhoneAuthState != null) {
      return recievedPhoneAuthState(this);
    }
    return orElse();
  }
}

abstract class RecievedPhoneAuthState implements LoginEvent {
  const factory RecievedPhoneAuthState({PhoneAuthStatus phoneAuthStatus}) =
      _$RecievedPhoneAuthState;

  PhoneAuthStatus get phoneAuthStatus;
  $RecievedPhoneAuthStateCopyWith<RecievedPhoneAuthState> get copyWith;
}

class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {@required EmailAddress emailAddress,
      @required Password password,
      @required PhoneNumber phoneNumber,
      @required Otp otp,
      @required bool showErrorMessages,
      @required bool showErrorMessagesOnOtpDialogBox,
      @required bool showErrorMessagesOnPhoneNumberDialogBox,
      @required bool showOtpDialogBox,
      @required bool isSubmitting,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _LoginState(
      emailAddress: emailAddress,
      password: password,
      phoneNumber: phoneNumber,
      otp: otp,
      showErrorMessages: showErrorMessages,
      showErrorMessagesOnOtpDialogBox: showErrorMessagesOnOtpDialogBox,
      showErrorMessagesOnPhoneNumberDialogBox:
          showErrorMessagesOnPhoneNumberDialogBox,
      showOtpDialogBox: showOtpDialogBox,
      isSubmitting: isSubmitting,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

mixin _$LoginState {
  EmailAddress get emailAddress;
  Password get password;
  PhoneNumber get phoneNumber;
  Otp get otp;
  bool get showErrorMessages;
  bool get showErrorMessagesOnOtpDialogBox;
  bool get showErrorMessagesOnPhoneNumberDialogBox;
  bool get showOtpDialogBox;
  bool get isSubmitting;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  $LoginStateCopyWith<LoginState> get copyWith;
}

abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      Otp otp,
      bool showErrorMessages,
      bool showErrorMessagesOnOtpDialogBox,
      bool showErrorMessagesOnPhoneNumberDialogBox,
      bool showOtpDialogBox,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object otp = freezed,
    Object showErrorMessages = freezed,
    Object showErrorMessagesOnOtpDialogBox = freezed,
    Object showErrorMessagesOnPhoneNumberDialogBox = freezed,
    Object showOtpDialogBox = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      otp: otp == freezed ? _value.otp : otp as Otp,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      showErrorMessagesOnOtpDialogBox:
          showErrorMessagesOnOtpDialogBox == freezed
              ? _value.showErrorMessagesOnOtpDialogBox
              : showErrorMessagesOnOtpDialogBox as bool,
      showErrorMessagesOnPhoneNumberDialogBox:
          showErrorMessagesOnPhoneNumberDialogBox == freezed
              ? _value.showErrorMessagesOnPhoneNumberDialogBox
              : showErrorMessagesOnPhoneNumberDialogBox as bool,
      showOtpDialogBox: showOtpDialogBox == freezed
          ? _value.showOtpDialogBox
          : showOtpDialogBox as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      PhoneNumber phoneNumber,
      Otp otp,
      bool showErrorMessages,
      bool showErrorMessagesOnOtpDialogBox,
      bool showErrorMessagesOnPhoneNumberDialogBox,
      bool showOtpDialogBox,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object emailAddress = freezed,
    Object password = freezed,
    Object phoneNumber = freezed,
    Object otp = freezed,
    Object showErrorMessages = freezed,
    Object showErrorMessagesOnOtpDialogBox = freezed,
    Object showErrorMessagesOnPhoneNumberDialogBox = freezed,
    Object showOtpDialogBox = freezed,
    Object isSubmitting = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_LoginState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress as EmailAddress,
      password: password == freezed ? _value.password : password as Password,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      otp: otp == freezed ? _value.otp : otp as Otp,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      showErrorMessagesOnOtpDialogBox:
          showErrorMessagesOnOtpDialogBox == freezed
              ? _value.showErrorMessagesOnOtpDialogBox
              : showErrorMessagesOnOtpDialogBox as bool,
      showErrorMessagesOnPhoneNumberDialogBox:
          showErrorMessagesOnPhoneNumberDialogBox == freezed
              ? _value.showErrorMessagesOnPhoneNumberDialogBox
              : showErrorMessagesOnPhoneNumberDialogBox as bool,
      showOtpDialogBox: showOtpDialogBox == freezed
          ? _value.showOtpDialogBox
          : showOtpDialogBox as bool,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {@required this.emailAddress,
      @required this.password,
      @required this.phoneNumber,
      @required this.otp,
      @required this.showErrorMessages,
      @required this.showErrorMessagesOnOtpDialogBox,
      @required this.showErrorMessagesOnPhoneNumberDialogBox,
      @required this.showOtpDialogBox,
      @required this.isSubmitting,
      @required this.authFailureOrSuccessOption})
      : assert(emailAddress != null),
        assert(password != null),
        assert(phoneNumber != null),
        assert(otp != null),
        assert(showErrorMessages != null),
        assert(showErrorMessagesOnOtpDialogBox != null),
        assert(showErrorMessagesOnPhoneNumberDialogBox != null),
        assert(showOtpDialogBox != null),
        assert(isSubmitting != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final PhoneNumber phoneNumber;
  @override
  final Otp otp;
  @override
  final bool showErrorMessages;
  @override
  final bool showErrorMessagesOnOtpDialogBox;
  @override
  final bool showErrorMessagesOnPhoneNumberDialogBox;
  @override
  final bool showOtpDialogBox;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'LoginState(emailAddress: $emailAddress, password: $password, phoneNumber: $phoneNumber, otp: $otp, showErrorMessages: $showErrorMessages, showErrorMessagesOnOtpDialogBox: $showErrorMessagesOnOtpDialogBox, showErrorMessagesOnPhoneNumberDialogBox: $showErrorMessagesOnPhoneNumberDialogBox, showOtpDialogBox: $showOtpDialogBox, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.showErrorMessagesOnOtpDialogBox,
                    showErrorMessagesOnOtpDialogBox) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesOnOtpDialogBox,
                    showErrorMessagesOnOtpDialogBox)) &&
            (identical(other.showErrorMessagesOnPhoneNumberDialogBox,
                    showErrorMessagesOnPhoneNumberDialogBox) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesOnPhoneNumberDialogBox,
                    showErrorMessagesOnPhoneNumberDialogBox)) &&
            (identical(other.showOtpDialogBox, showOtpDialogBox) ||
                const DeepCollectionEquality()
                    .equals(other.showOtpDialogBox, showOtpDialogBox)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(otp) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(showErrorMessagesOnOtpDialogBox) ^
      const DeepCollectionEquality()
          .hash(showErrorMessagesOnPhoneNumberDialogBox) ^
      const DeepCollectionEquality().hash(showOtpDialogBox) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
          {@required
              EmailAddress emailAddress,
          @required
              Password password,
          @required
              PhoneNumber phoneNumber,
          @required
              Otp otp,
          @required
              bool showErrorMessages,
          @required
              bool showErrorMessagesOnOtpDialogBox,
          @required
              bool showErrorMessagesOnPhoneNumberDialogBox,
          @required
              bool showOtpDialogBox,
          @required
              bool isSubmitting,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_LoginState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  PhoneNumber get phoneNumber;
  @override
  Otp get otp;
  @override
  bool get showErrorMessages;
  @override
  bool get showErrorMessagesOnOtpDialogBox;
  @override
  bool get showErrorMessagesOnPhoneNumberDialogBox;
  @override
  bool get showOtpDialogBox;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith;
}
