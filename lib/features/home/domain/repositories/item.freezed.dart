// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required FromCatch fromCatch,
      @required ClotheType clotheType,
      @required UniqueId itemId,
      @required VandorName vandorName,
      @required Price price}) {
    return _Item(
      fromCatch: fromCatch,
      clotheType: clotheType,
      itemId: itemId,
      vandorName: vandorName,
      price: price,
    );
  }
}

// ignore: unused_element
const $Item = _$ItemTearOff();

mixin _$Item {
  FromCatch get fromCatch;
  ClotheType get clotheType;
  UniqueId get itemId;
  VandorName get vandorName;
  Price get price;

  $ItemCopyWith<Item> get copyWith;
}

abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {FromCatch fromCatch,
      ClotheType clotheType,
      UniqueId itemId,
      VandorName vandorName,
      Price price});
}

class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object fromCatch = freezed,
    Object clotheType = freezed,
    Object itemId = freezed,
    Object vandorName = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      fromCatch:
          fromCatch == freezed ? _value.fromCatch : fromCatch as FromCatch,
      clotheType:
          clotheType == freezed ? _value.clotheType : clotheType as ClotheType,
      itemId: itemId == freezed ? _value.itemId : itemId as UniqueId,
      vandorName:
          vandorName == freezed ? _value.vandorName : vandorName as VandorName,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {FromCatch fromCatch,
      ClotheType clotheType,
      UniqueId itemId,
      VandorName vandorName,
      Price price});
}

class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object fromCatch = freezed,
    Object clotheType = freezed,
    Object itemId = freezed,
    Object vandorName = freezed,
    Object price = freezed,
  }) {
    return _then(_Item(
      fromCatch:
          fromCatch == freezed ? _value.fromCatch : fromCatch as FromCatch,
      clotheType:
          clotheType == freezed ? _value.clotheType : clotheType as ClotheType,
      itemId: itemId == freezed ? _value.itemId : itemId as UniqueId,
      vandorName:
          vandorName == freezed ? _value.vandorName : vandorName as VandorName,
      price: price == freezed ? _value.price : price as Price,
    ));
  }
}

class _$_Item with DiagnosticableTreeMixin implements _Item {
  const _$_Item(
      {@required this.fromCatch,
      @required this.clotheType,
      @required this.itemId,
      @required this.vandorName,
      @required this.price})
      : assert(fromCatch != null),
        assert(clotheType != null),
        assert(itemId != null),
        assert(vandorName != null),
        assert(price != null);

  @override
  final FromCatch fromCatch;
  @override
  final ClotheType clotheType;
  @override
  final UniqueId itemId;
  @override
  final VandorName vandorName;
  @override
  final Price price;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Item(fromCatch: $fromCatch, clotheType: $clotheType, itemId: $itemId, vandorName: $vandorName, price: $price)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Item'))
      ..add(DiagnosticsProperty('fromCatch', fromCatch))
      ..add(DiagnosticsProperty('clotheType', clotheType))
      ..add(DiagnosticsProperty('itemId', itemId))
      ..add(DiagnosticsProperty('vandorName', vandorName))
      ..add(DiagnosticsProperty('price', price));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.fromCatch, fromCatch) ||
                const DeepCollectionEquality()
                    .equals(other.fromCatch, fromCatch)) &&
            (identical(other.clotheType, clotheType) ||
                const DeepCollectionEquality()
                    .equals(other.clotheType, clotheType)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.vandorName, vandorName) ||
                const DeepCollectionEquality()
                    .equals(other.vandorName, vandorName)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fromCatch) ^
      const DeepCollectionEquality().hash(clotheType) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(vandorName) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item implements Item {
  const factory _Item(
      {@required FromCatch fromCatch,
      @required ClotheType clotheType,
      @required UniqueId itemId,
      @required VandorName vandorName,
      @required Price price}) = _$_Item;

  @override
  FromCatch get fromCatch;
  @override
  ClotheType get clotheType;
  @override
  UniqueId get itemId;
  @override
  VandorName get vandorName;
  @override
  Price get price;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}
