import 'package:dartz/dartz.dart';

import '../../../../core/failure.dart';
import '../../../../core/value_objects.dart';
import '../../../../core/value_validators.dart';

class EmailAddress extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
 @override
  final  String originalvalue;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(emailValidator(input: input.trim()),input.trim());
  }

  EmailAddress._(this.value, this.originalvalue);

}


class Password extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
@override
  final  String originalvalue;

  factory Password(String input) {
    assert(input != null);
    return Password._(passwordValidator(input: input.trim()),input.trim());
  }

  Password._(this.value, this.originalvalue);
}


class PhoneNumber extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
 @override
  final  String originalvalue;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(phoneNumberValidator(input: input.trim()),input.trim());
  }

  PhoneNumber._(this.value, this.originalvalue);

}


class Otp extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
 @override
  final  String originalvalue;

  factory Otp(String input) {
    assert(input != null);
    return Otp._(otpValidator(input: input.trim()),input.trim());
  }

  Otp._(this.value, this.originalvalue);

}