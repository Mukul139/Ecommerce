import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/injection/injection.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/current_user.dart';
import '../../../../core/current_user.dart' as user;
import '../../domain/entities/auth_interface.dart';
import '../../domain/repositories/value_objects.dart';
import 'auth_exception.dart';
import 'auth_failure.dart';

@LazySingleton(as: Auth)
class AuthRepo implements Auth {
  AuthRepo(this._firebaseAuth, this._googleSignIn, this.currentUser,
      this._facebookLogin);

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final CurrentUser currentUser;
  final FacebookLogin _facebookLogin;
  String verificationId;
  PhoneAuthStatus _phoneAuthStatus;
  StreamController<PhoneAuthStatus> phoneAuthStream =
      StreamController.broadcast();
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID_EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID_PASSWORD');
    if (passwordStr == 'INVALID_PASSWORD' ||
        emailAddressStr == 'INVALID_EMAIL') {
      return left(const AuthFailure.serverError());
    }
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      )
          .then((_) async {
        await currentUser.sendEmailVerification();
        return left(const AuthFailure.emailNotVerified());
      });
    } catch (e) {
      return left(AuthExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    EmailAddress emailAddress,
    Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID_EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID_PASSWORD');
    if (passwordStr == 'INVALID_PASSWORD' ||
        emailAddressStr == 'INVALID_EMAIL') {
      return left(const AuthFailure.serverError());
    }
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      )
          .then((_) async {
        final emailVerifiedOrNot =
            await currentUser.getUser().then((value) => value.isemailverified);
        if (emailVerifiedOrNot) {
          return right(unit);
        } else {
          return left(const AuthFailure.emailNotVerified());
        }
      });
    } catch (e) {
      return left(AuthExceptionHandler.handleException(e));
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }
      final googleAuthentication = await googleUser.authentication;
      final authCredential = GoogleAuthProvider.getCredential(
        accessToken: googleAuthentication.accessToken,
        idToken: googleAuthentication.idToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } catch (e) {
      return left(AuthExceptionHandler.handleException(e));
    }
  }

  @override
  Future<void> signOut() async {
    Future.wait([
      _googleSignIn.signOut(),
      _facebookLogin.logOut(),
      _firebaseAuth.signOut(),
    ]);
  }

  @override
  Future<Option<user.User>> getSignedInUser() async {
    final user.User userdata = await currentUser.getUser();

    return optionOf(userdata);
  }

  @override
  Future<Option> sendEmailVerification() async {
    try {
      await currentUser.sendEmailVerification();
      return some(unit);
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Option> sendPasswordForgetMail({EmailAddress emailAddress}) async {
    try {
      await currentUser.forgetPasssword(
          emailAddress: emailAddress.getOrCrash());
      return some(unit);
    } catch (e) {
      return none();
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> otp({Otp otp}) async {
    try {
      final credential = PhoneAuthProvider.getCredential(
          verificationId: verificationId, smsCode: otp.getOrCrash());
      final result = await _firebaseAuth.signInWithCredential(credential);
      if (result.user != null) {
        return right(unit);
      } else {
        print('invalid user');
        return left(const AuthFailure.invalidUser());
      }
    } catch (e) {
      print('otp erro');
      print(e);
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithFacebook() async {
    final result = await _facebookLogin.logIn(['email', 'public_profile']);
    try {
      switch (result.status) {
        case FacebookLoginStatus.loggedIn:
          final FacebookAccessToken facebookAccessToken = result.accessToken;
          final AuthCredential authCredential =
              FacebookAuthProvider.getCredential(facebookAccessToken.token);

          await _firebaseAuth.signInWithCredential(
            authCredential,
          );
          return right(unit);
          break;

        case FacebookLoginStatus.cancelledByUser:
          return left(const AuthFailure.cancelledByUser());
          break;

        default:
          return left(const AuthFailure.serverError());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  StreamController<PhoneAuthStatus> signInWithPhone({PhoneNumber phoneNumber}) {
    try {
      _firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber.getOrCrash(),
          // ignore: avoid_redundant_argument_values
          timeout: const Duration(seconds: 30),
          verificationCompleted: (PhoneAuthCredential user) {
            phoneAuthStream.add(PhoneAuthStatus.verificationCompelete);
            print('Verified Phone Number');
            print(_firebaseAuth.currentUser);
          },
          verificationFailed: (FirebaseAuthException authException) {
            print("exception: ${authException.code}");
            phoneAuthStream.add(PhoneAuthStatus.error);
          },
          codeSent: (String verifId, [int forceSent]) {
            verificationId = verifId;
            phoneAuthStream.add(PhoneAuthStatus.codeSend);
            print('code sent');
          },
          codeAutoRetrievalTimeout: (String timeOut) {});

// // Future.delayed(Duration( 500),)  {

// // }
// //  phoneAuthStream.add('init data');

//       Timer(const Duration(seconds: 2), () {
//         phoneAuthStream.add(PhoneAuthStatus.codeSend);
//         //   if(timer.tick%3==0)
//         //  { phoneAuthStream.add(PhoneAuthStatus.codeSend);}
//         //   else if(timer.tick%5==0)
//         //  { phoneAuthStream.add(PhoneAuthStatus.verificationCompelete);}
//         //   else if(timer.tick%7==0)
//         //  { phoneAuthStream.add(PhoneAuthStatus.error);}
//       });
//       print('return');

      return phoneAuthStream;
    } catch (e) {
      phoneAuthStream.add(PhoneAuthStatus.error);
      return phoneAuthStream;
    }
  }
//TODO: dispose stream
}

enum PhoneAuthStatus { error, codeSend, verificationCompelete }
