import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

@module
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firestore => Firestore.instance;
  @lazySingleton
  Crashlytics get crashlytics => Crashlytics.instance;
  @lazySingleton
  FacebookLogin get facebookLogin => FacebookLogin();
  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(),
      );

  @lazySingleton
  Razorpay get razorpay => Razorpay();
}
