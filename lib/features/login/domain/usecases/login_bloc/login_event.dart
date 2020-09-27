part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged(String emailStr) = EmailChanged;
  const factory LoginEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory LoginEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory LoginEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory LoginEvent.signInWithGooglePressed() = SignInWithGooglePressed;
  const factory LoginEvent.signInWithFacebookPressed() =
      SignInWithFacebookPressed;
  const factory LoginEvent.signInWithPhone() = SignInWithPhone;
  const factory LoginEvent.submittedOtp() = SubmittedOtp;

  const factory LoginEvent.phoneNumberChanged(String phoneNumberStr) =
      PhoneNumberChanged;
  const factory LoginEvent.otpChanged(String otpStr) = OtpChanged;
  const factory LoginEvent.hideDialogBox() = HideDialogBox;
  const factory LoginEvent.recievedPhoneAuthState(
      {PhoneAuthStatus phoneAuthStatus}) = RecievedPhoneAuthState;
}
