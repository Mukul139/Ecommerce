import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/core/common_interface.dart';
import 'package:ecommerceTest/core/value_validators.dart';
import 'package:ecommerceTest/core/error.dart' as error;
import 'package:ecommerceTest/core/failure.dart';
import 'package:uuid/uuid.dart';

abstract class ValueObject<T,S> implements IValidatable {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;
  S get originalvalue;
  @override
  bool isValid() => value.isRight();

  T getOrElse(T dflt) {
    return value.getOrElse(() => dflt);
  }

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold(
        (f) => throw error.UnexpectedValueError(valueFailure: f), id);
  }

 S getOrCrashOriginal() {
    // id = identity - same as writing (right) => right
    return value.fold(
        (f) => throw error.UnexpectedValueError(valueFailure: f), (r)=>originalvalue);
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  // @override
  // String toString() => 'ValueObject(value: $value)';
  @override
  String toString() =>
      'ValueObject(originalvalue: $originalvalue, value: $value)';

  // @override
  // bool operator ==(Object o) {
  //   if (identical(this, o)) return true;

  //   return o is ValueObject &&
  //     o.value == value;
  // }

  // @override
  // int get hashCode => value.hashCode;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject &&
        o.originalvalue == originalvalue &&
        o.value == value;
  }

  @override
  int get hashCode => originalvalue.hashCode ^ value.hashCode;
}

class UniqueId extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;

  @override
  final String originalvalue;
  // We cannot let a simple String be passed in. This would allow for possible non-unique IDs.
  factory UniqueId() {
    final generatedId = Uuid().v1();
    return UniqueId._(
      right(generatedId), generatedId,
    );
  }

  /// Used with strings we trust are unique, such as database IDs.
  factory UniqueId.fromUniqueString(String uniqueIdStr) {
    assert(uniqueIdStr != null);
    return UniqueId._(
      right(uniqueIdStr),
      uniqueIdStr,
    );
  }

  const UniqueId._(this.value, this.originalvalue);
}

class StringSingleLine extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
 @override
  final  String originalvalue;

  factory StringSingleLine(String input) {
    assert(input != null);
    return StringSingleLine._(
      validateSingleLine(input: input),  input,
    );
  }

  const StringSingleLine._(this.value, this.originalvalue);
}

class ProviderId extends ValueObject<String,String> {
  @override
  final Either<ValueFailure<String>, String> value;
 @override
  final  String originalvalue;

  factory ProviderId(String input) {
    assert(input != null);
    return ProviderId._(
      providerValidate(input: input),input
    );
  }

  const ProviderId._(this.value, this.originalvalue);
}

class UnexpectedValueError extends Error {}
