import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../features/login/domain/repositories/value_objects.dart';
import '../injection/injection.dart';
import 'failure.dart';
import 'performance_craslytics/crashlytics.dart';
import 'value_objects.dart';

part "current_user.freezed.dart";

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required StringSingleLine name,
    @required EmailAddress emailAddress,
    @required bool isemailverified,
    @required ProviderId providerId,
    @required bool isProfileCompleted,
    @required PhoneNumber phoneNumber,
  }) = _User;
}

extension UserX on User {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .andThen(name.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}

@lazySingleton
class CurrentUser {
  final FirebaseAuth _firebaseAuth;

  CurrentUser(this._firebaseAuth);

  Future<User> getUser() async {
    User userData;
    try {
      final user = _firebaseAuth.currentUser;

      bool emailVerified = true;

      bool isProfileComplete = false;

      if (user != null) {
        if (user.photoURL == 'true') {
          isProfileComplete = true;
        }
        if (user.providerData.length == 1) {
          if (!user.emailVerified &&
              user.providerData[0].providerId == 'password') {
            emailVerified = false;
          }
        }

        // ignore: avoid_function_literals_in_foreach_calls
        user.providerData.forEach((profile) {
         
          String name = '';
          if (profile.displayName != null) {
            name = profile.displayName;
          } else if (profile.email != null) {
            name = profile.email.split('@').first;
          }
          String _phoneNumber = '';
         
          if (profile.phoneNumber != null) {
            _phoneNumber =profile.phoneNumber.isNotEmpty?profile.phoneNumber.substring(3):'';
          }
          userData = User(
            emailAddress: EmailAddress(profile.email ?? ''),
            id: UniqueId.fromUniqueString(user.uid),
            name: StringSingleLine(name.isEmpty ? 'Unknown' : name),
            isemailverified: emailVerified,
            providerId: ProviderId(profile.providerId),
            isProfileCompleted: isProfileComplete,
            phoneNumber: PhoneNumber(_phoneNumber),
          );
        });
      }
    } catch (e, s) {
     
      getIt<CrashlyticsLogger>().recordError(
          e: e,
          s: s,
          context:
              "function:getUser ,class:CurrentUser , location: lib-core-current_user.dart ");
    }
    return userData;
  }

  Future<void> sendEmailVerification() async {
    final user = _firebaseAuth.currentUser;

    await user.sendEmailVerification();
  }

  Future updatePassword({
    @required String password,
  }) async {
    final user = _firebaseAuth.currentUser;

    await user.updatePassword(password);
  }

  Future sendPasswordResetMail() async {
    final user = _firebaseAuth.currentUser;

    await user.sendEmailVerification();
  }

  Future forgetPasssword({@required String emailAddress}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: emailAddress);
  }

  Future completedProfile() async {
    final user = _firebaseAuth.currentUser;

    await user.updateProfile(photoURL: 'true');
  }

  Future deResisterProfile() async {
    final user = _firebaseAuth.currentUser;

    await user.updateProfile(photoURL: 'false');
  }
}

class UpdatePasswordError extends Error {}

class SendPasswordResetMail extends Error {}

class UpdateProfile extends Error {}

class UnexpectedError extends Error {}
