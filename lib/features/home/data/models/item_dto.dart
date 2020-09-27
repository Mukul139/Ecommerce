import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerceTest/core/value_objects.dart';
import 'package:ecommerceTest/features/home/domain/repositories/item.dart';
import 'package:ecommerceTest/features/home/domain/repositories/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part "item_dto.freezed.dart";
part "item_dto.g.dart";

@freezed
abstract class Itemdto with _$Itemdto {
  factory Itemdto({
    @JsonKey(ignore: true) String id,
    @required String vandorName,
    @required int price,
    @required String itemType,
  }) = _Itemdto;

  factory Itemdto.fromFirestore(DocumentSnapshot doc) {
    return Itemdto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  factory Itemdto.fromCatch({Map<String, dynamic> doc, String itemId}) {
    return Itemdto.fromJson(doc).copyWith(id: itemId);
  }

  factory Itemdto.fromJson(Map<String, dynamic> json) =>
      _$ItemdtoFromJson(json);

  factory Itemdto.fromDomian(Item itemData) {
    return Itemdto(
        itemType: itemData.clotheType.getOrCrashOriginal(),
        price: itemData.price.getOrCrashOriginal(),
        vandorName: itemData.vandorName.getOrCrashOriginal(),
        id: itemData.itemId.getOrCrashOriginal());
  }
}

extension ItemdtoX on Itemdto {
  Item toDomain() {
    return Item(
        fromCatch: FromCatch(),
        clotheType: ClotheType(itemType),
        vandorName: VandorName(vandorName),
        itemId: UniqueId.fromUniqueString(id), price: Price(price));
  }
}
