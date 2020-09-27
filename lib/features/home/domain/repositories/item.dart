import 'package:dartz/dartz.dart';
import 'package:ecommerceTest/core/failure.dart';
import 'package:ecommerceTest/core/value_objects.dart';
import 'package:ecommerceTest/features/home/domain/repositories/value_object.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part "item.freezed.dart";

@freezed
abstract class Item with _$Item {
  const factory Item({
    @required FromCatch fromCatch,
    @required ClotheType clotheType,
    @required UniqueId itemId,
    @required VandorName vandorName,
    @required Price price,
  }) = _Item;
factory  Item.empty() => Item(clotheType: ClotheType(''), fromCatch: FromCatch(),
   itemId: UniqueId(), price: Price(0), vandorName: VandorName(''));
}

extension ItemX on Item {
  Option<ValueFailure<dynamic>> get failureOption {
    return clotheType.failureOrUnit
        .andThen(itemId.failureOrUnit)
        .andThen(vandorName.failureOrUnit)
        .andThen(price.failureOrUnit)
        .andThen(fromCatch.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
