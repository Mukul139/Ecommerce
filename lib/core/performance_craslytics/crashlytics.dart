import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CrashlyticsLogger {
  final Crashlytics _crashlytics;
  CrashlyticsLogger(
    this._crashlytics,);

  void logCrashlytics({@required String error}) {
    _crashlytics.log(error);
    //TODO: crashlytics setup
  }

  void recordError(
      {@required dynamic e, @required StackTrace s, @required String context}) {
    _crashlytics.recordError(e, s, context: context);
  }

  void setString({@required String key, @required String value}) {
    _crashlytics.setString(key, value);
  }
}
