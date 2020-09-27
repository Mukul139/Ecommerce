import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:string_validator/string_validator.dart';

import 'failure.dart';

Either<ValueFailure<String>, String> emailValidator({
  @required String input,
}) {
  final String value = input.trim();

  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(value)) {
    return right(value);
  } else {
    return left(ValueFailure.invalidEmail(
        showError: 'invalid mail', failedValue: value));
  }
}

Either<ValueFailure<String>, String> passwordValidator({
  @required String input,
}) {
  final String value = input.trim();

  if (value.length > 6) {
    return right(value);
  } else {
    return left(ValueFailure.shortPassword(
        showError: 'short password', failedValue: value));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(
    {@required String input}) {
  final String value = input.trim();

  if (value.contains('\n')) {
    return left(ValueFailure.multiLine(
        showError: 'Invalid value', failedValue: value, max: 1));
  } else {
    return right(value);
  }
}

Either<ValueFailure<String>, String> providerValidate(
    {@required String input}) {
  switch (input) {
    case "facebook.com":
      return right('facebook');
    case "google.com":
      return right('google');
    case "phone":
      return right("phone");
    case "password":
      return right('mail');
    case "twitter.com":
      return right('twitter');
    case "github.com":
      return right('github');
    default:
      return right(input);
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength({
  @required String input,
  @required int maxLength,
}) {
  final String value = input.trim();

  if (value.length <= maxLength) {
    return right(value);
  } else {
    return left(ValueFailure.exceedingLength(
        failedValue: value, max: maxLength, showError: 'Invalid value'));
  }
}

Either<ValueFailure<String>, String> validateStringNotEmpty(
    {@required String input}) {
  final String value = input.trim();
  if (value.isEmpty) {
    return left(
        ValueFailure.empty(showError: 'Empty value', failedValue: value));
  } else {
    return right(value);
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    {@required KtList<T> input, @required int maxLength}) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.listTooLong(
      showError: 'max',
      failedValue: input,
      max: maxLength,
    ));
  }
}

Either<ValueFailure<String>, String> validateInteger<T>(
    {@required String input}) {
  final String value = input.trim();
  if (isInt(value)) {
    return right(value);
  } else {
    return left(ValueFailure.notInteger(
      showError: 'Invalid value',
      failedValue: value,
    ));
  }
}

Either<ValueFailure<String>, String> validateOnlyAlpha<T>(
    {@required String input}) {
  final String value = input.trim();
  if (isAlpha(value)) {
    return right(value);
  } else {
    return left(ValueFailure.notString(
      showError: 'Invalid value',
      failedValue: value,
    ));
  }
}

Either<ValueFailure<String>, String> validateName<T>(
    {@required String input}) {
  final String value = input.trim();

  var count = 0;

  for (var i = 0; i < value.length; i++) {
    if (value[i] != ' ' && !isAlpha(value[i])) {
      count++;
    }
  }

  if (count == 0) {
    return right(value);
  } else {
    return left(ValueFailure.invalidName(
      showError: 'Invalid value',
      failedValue: value,
    ));
  }
}

Either<ValueFailure<String>, String> validateUrlOrEmpty<T>(
    {@required String input}) {
  final String value = input.trim();
  if (isURL(value) || value.isEmpty) {
    return right(value);
  } else {
    return left(ValueFailure.invalidUrl(
      showError: 'Invalid Url',
      failedValue: value,
    ));
  }
}

Either<ValueFailure<bool>, bool> validateBool<T>({@required T input}) {
  if (input.runtimeType.toString().toLowerCase() == 'bool') {
    return right(input as bool);
  } else {
    return left(const ValueFailure.invalidBool(
      showError: 'Invalid value',
      failedValue: false,
    ));
  }
}

Either<ValueFailure<String>, int> isInteger<T>({@required T input}) {
  if (input.runtimeType.toString().toLowerCase() == 'int') {
    return right(input as int);
  } else {
    return left(ValueFailure.invalidInteger(
      showError: 'Invalid value',
      failedValue: input.toString(),
    ));
  }
}

Either<ValueFailure<String>, String> isString<T>({@required T input}) {
  if (input.runtimeType.toString().toLowerCase() == 'string') {
    return right(input as String);
  } else {
    return left(ValueFailure.invalidString(
      showError: 'Invalid value',
      failedValue: input.toString(),
    ));
  }
}


Either<ValueFailure<String>, String> phoneNumberValidator<T>({@required String input}) {
  if (isNumeric(input) && input.length==10) {
    return right('+91$input');
  } else {
    return left(ValueFailure.invalidPhoneNumber(
      showError: 'Invalid Phone number',
      failedValue: input,
    ));
  }
}


Either<ValueFailure<String>, String> otpValidator<T>({@required String input}) {
  if (isNumeric(input) && input.length<=6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidOtp(
      showError: 'Invalid otp',
      failedValue: input,
    ));
  }
}

Either<ValueFailure<String>, List> isList<T>({@required T input}) {
 
  try{
  if (input.runtimeType.toString().toLowerCase().substring(0,4) == 'list') {
    return right(input as List);
  } else {
    return left(ValueFailure.invalidList(
      showError: 'Invalid value',
      failedValue: input.toString(),
    ));
  }}
  catch(_){
 return left(ValueFailure.invalidList(
      showError: 'Invalid value',
      failedValue: input.toString(),
    ));
  }
}
Either<ValueFailure<String>, String> PriceValidator<T>({@required int input}) {
   final String price=input.toString();
String newprice='';
for (var i = price.length-1; i >=0; i--) {
    // ignore: use_string_buffers
    newprice =newprice+price[i];
  if((price.length-i)%3==0 && i!=0 && i!=price.length-1){
     newprice ='$newprice,';
  }
}
 

    return right('Price: \u20B9${newprice.split('').reversed.join()}');

  
}
