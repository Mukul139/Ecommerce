import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/core/failure.dart';
import 'package:ecommerceTest/core/value_objects.dart';
import 'package:ecommerceTest/core/value_validators.dart';

class Price extends ValueObject<String, int> {
  @override
  final Either<ValueFailure<String>, String> value;
  @override
  final int originalvalue;

  factory Price(int input) {
    assert(input != null);
    return Price._(PriceValidator(input: input), input);
  }

  Price._(this.value, this.originalvalue);
}

class VandorName extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;
  @override
  final String originalvalue;

  factory VandorName(String input) {
    assert(input != null);
    return VandorName._(
        validateSingleLine(input: input)
            .flatMap((a) => validateStringNotEmpty(input: a))
            .fold((l) => left(l), (r) => right("Vendor Name: $input")),
        input);
  }

  VandorName._(this.value, this.originalvalue);
}

class ClotheType extends ValueObject<String, String> {
  @override
  final Either<ValueFailure<String>, String> value;
  @override
  final String originalvalue;

  factory ClotheType(String input) {
    assert(input != null);
    return ClotheType._(
        validateName(input: input)
            .fold((l) => left(l), (r) => right("Type: $input")),
        input);
  }

  ClotheType._(this.value, this.originalvalue);
}

class FromCatch extends ValueObject<bool, bool> {
  @override
  Either<ValueFailure<bool>, bool> value;
  @override
  bool originalvalue;

  factory FromCatch(
      // ignore: avoid_positional_boolean_parameters
      [bool input = true]) {
    assert(input != null);

    return FromCatch._(right(input), input);
  }

  FromCatch._(this.value, this.originalvalue);
  // ignore: avoid_positional_boolean_parameters
  void setCatch(bool catchInfo) {
    value = value.fold((l) => left(l), (r) {
      originalvalue = catchInfo;
      return right(catchInfo);
    });
  }
}
