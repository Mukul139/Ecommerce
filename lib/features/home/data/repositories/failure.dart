
import 'package:freezed_annotation/freezed_annotation.dart';
part "failure.freezed.dart";
@freezed
abstract class HomePageFailure with _$HomePageFailure {
  const factory HomePageFailure.unexpected() = Unexpected;
  const factory HomePageFailure.insufficientPermissions() = InsufficientPermissions;
 

}