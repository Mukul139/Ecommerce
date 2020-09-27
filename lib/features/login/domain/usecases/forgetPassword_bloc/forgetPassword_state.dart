part of 'forgetPassword_bloc.dart';

@freezed
abstract class ForgetPasswordState with _$ForgetPasswordState {
   const factory ForgetPasswordState.initial() = Initial;
  const factory ForgetPasswordState.showDialogBox() = ShowDialogBox;
 const factory ForgetPasswordState.serverError() = ServerError;
     const factory ForgetPasswordState.linkSendSuccessfully({ @required  String message}) = LinkSendSuccessfully;
     const factory ForgetPasswordState.invalidMail() = InvalidMail;
    const factory ForgetPasswordState.cancelled() = Cancelled;

}