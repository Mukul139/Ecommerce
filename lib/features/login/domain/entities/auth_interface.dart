import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/features/login/data/repositories/auth_failure.dart';
import 'package:ecommerceTest/features/login/data/repositories/auth_repo.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/current_user.dart';
import '../repositories/value_objects.dart';


abstract class Auth {
  Future<Option<User>> getSignedInUser();
  Future<Option> sendPasswordForgetMail({@required EmailAddress emailAddress});
  Future<Option> sendEmailVerification();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });


  Future<Either<AuthFailure, Unit>> signInWithFacebook();
  
  StreamController<PhoneAuthStatus> signInWithPhone({
    @required PhoneNumber phoneNumber,
    
  });

  Future<Either<AuthFailure, Unit>> otp({
    @required Otp otp,
    
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
