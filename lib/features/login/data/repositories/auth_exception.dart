
import 'auth_failure.dart';

enum AuthResultStatus {
  successful,
  emailAlreadyExists,
  wrongPassword,
  invalidEmail,
  userNotFound,
  userDisabled,
  operationNotAllowed,
  tooManyRequests,
  undefined,
}
// @lazySingleton
class AuthExceptionHandler {
  static AuthFailure handleException(dynamic e) {
   
    AuthFailure status;
    switch (e.code.toString()) {
      case "wrong-password":
        status = const AuthFailure.invalidEmailAndPasswordCombination();
        break;
      case "user-not-found":
        status = const AuthFailure.invalidEmailAndPasswordCombination();
        break;
      case "email-already-in-use":
        status = const AuthFailure.emailAlreadyInUse();
        break;
      default:
        status = const AuthFailure.serverError();
    }
    return status;
  }
}
