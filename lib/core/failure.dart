import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "failure.freezed.dart";


@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required T failedValue,
    @required int max,
            @required String showError,

  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required T failedValue,
            @required String showError,

  }) = Empty<T>;
  const factory ValueFailure.multiLine({
    @required T failedValue,
     @required int max,
             @required String showError,

  }) = Multiline<T>;
  const factory ValueFailure.numberTooLarge({
    @required T failedValue,
    @required num max,
        @required String showError,

  }) = NumberTooLarge<T>;
  const factory ValueFailure.listTooLong({
    @required T failedValue,
    @required int max,
            @required String showError,

  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
            @required String showError,

  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
            @required String showError,

  }) = ShortPassword<T>;
  const factory ValueFailure.invalidPhotoUrl({
    @required T failedValue,
            @required String showError,

  }) = InvalidPhotoUrl<T>;
  const factory ValueFailure.notInteger({
    @required T failedValue,
            @required String showError,

  }) = NotInteger<T>;
  const factory ValueFailure.invalidName({
    @required T failedValue,
            @required String showError,

  }) = InvalidStringWithSpace<T>;
  const factory ValueFailure.invalidUrl({
    @required T failedValue,
            @required String showError,

  }) = InvalidUrl<T>;
  const factory ValueFailure.invalidBoolValue({
    @required T failedValue,
            @required String showError,

  }) = InvalidBoolValue<T>;
   const factory ValueFailure.notString({
    @required T failedValue,
            @required String showError,

  }) = NotString<T>;
   const factory ValueFailure.invalidValue({
    @required T failedValue,
            @required String showError,

  }) = InvalidValue<T>;
   const factory ValueFailure.invalidInteger({
    @required T failedValue,
            @required String showError,

  }) = InvalidInteger<T>;
   const factory ValueFailure.invalidString({
    @required T failedValue,
            @required String showError,

  }) = InvalidString<T>;
   const factory ValueFailure.invalidList({
    @required T failedValue,
            @required String showError,

  }) = InvalidList<T>;
   const factory ValueFailure.invalidBool({
    @required T failedValue,
            @required String showError,

  }) = InvalidBool<T>;
 const factory ValueFailure.listLengthNotSatisfy({
    @required T failedValue,
            @required String showError,

  }) = ListLengthNotSatisfy<T>;
 const factory ValueFailure.invalidPhoneNumber({
    @required T failedValue,
            @required String showError,

  }) = InvalidPhoneNumber<T>;
 const factory ValueFailure.invalidOtp({
    @required T failedValue,
            @required String showError,

  }) = InvalidOtp<T>;
}
