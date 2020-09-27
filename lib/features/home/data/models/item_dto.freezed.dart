// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Itemdto _$ItemdtoFromJson(Map<String, dynamic> json) {
  return _Itemdto.fromJson(json);
}

class _$ItemdtoTearOff {
  const _$ItemdtoTearOff();

// ignore: unused_element
  _Itemdto call(
      {@JsonKey(ignore: true) String id,
      @required String vandorName,
      @required int price,
      @required String itemType}) {
    return _Itemdto(
      id: id,
      vandorName: vandorName,
      price: price,
      itemType: itemType,
    );
  }
}

// ignore: unused_element
const $Itemdto = _$ItemdtoTearOff();

mixin _$Itemdto {
  @JsonKey(ignore: true)
  String get id;
  String get vandorName;
  int get price;
  String get itemType;

  Map<String, dynamic> toJson();
  $ItemdtoCopyWith<Itemdto> get copyWith;
}

abstract class $ItemdtoCopyWith<$Res> {
  factory $ItemdtoCopyWith(Itemdto value, $Res Function(Itemdto) then) =
      _$ItemdtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String vandorName,
      int price,
      String itemType});
}

class _$ItemdtoCopyWithImpl<$Res> implements $ItemdtoCopyWith<$Res> {
  _$ItemdtoCopyWithImpl(this._value, this._then);

  final Itemdto _value;
  // ignore: unused_field
  final $Res Function(Itemdto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object vandorName = freezed,
    Object price = freezed,
    Object itemType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      vandorName:
          vandorName == freezed ? _value.vandorName : vandorName as String,
      price: price == freezed ? _value.price : price as int,
      itemType: itemType == freezed ? _value.itemType : itemType as String,
    ));
  }
}

abstract class _$ItemdtoCopyWith<$Res> implements $ItemdtoCopyWith<$Res> {
  factory _$ItemdtoCopyWith(_Itemdto value, $Res Function(_Itemdto) then) =
      __$ItemdtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String vandorName,
      int price,
      String itemType});
}

class __$ItemdtoCopyWithImpl<$Res> extends _$ItemdtoCopyWithImpl<$Res>
    implements _$ItemdtoCopyWith<$Res> {
  __$ItemdtoCopyWithImpl(_Itemdto _value, $Res Function(_Itemdto) _then)
      : super(_value, (v) => _then(v as _Itemdto));

  @override
  _Itemdto get _value => super._value as _Itemdto;

  @override
  $Res call({
    Object id = freezed,
    Object vandorName = freezed,
    Object price = freezed,
    Object itemType = freezed,
  }) {
    return _then(_Itemdto(
      id: id == freezed ? _value.id : id as String,
      vandorName:
          vandorName == freezed ? _value.vandorName : vandorName as String,
      price: price == freezed ? _value.price : price as int,
      itemType: itemType == freezed ? _value.itemType : itemType as String,
    ));
  }
}

@JsonSerializable()
class _$_Itemdto implements _Itemdto {
  _$_Itemdto(
      {@JsonKey(ignore: true) this.id,
      @required this.vandorName,
      @required this.price,
      @required this.itemType})
      : assert(vandorName != null),
        assert(price != null),
        assert(itemType != null);

  factory _$_Itemdto.fromJson(Map<String, dynamic> json) =>
      _$_$_ItemdtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String vandorName;
  @override
  final int price;
  @override
  final String itemType;

  @override
  String toString() {
    return 'Itemdto(id: $id, vandorName: $vandorName, price: $price, itemType: $itemType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Itemdto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.vandorName, vandorName) ||
                const DeepCollectionEquality()
                    .equals(other.vandorName, vandorName)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.itemType, itemType) ||
                const DeepCollectionEquality()
                    .equals(other.itemType, itemType)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(vandorName) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(itemType);

  @override
  _$ItemdtoCopyWith<_Itemdto> get copyWith =>
      __$ItemdtoCopyWithImpl<_Itemdto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ItemdtoToJson(this);
  }
}

abstract class _Itemdto implements Itemdto {
  factory _Itemdto(
      {@JsonKey(ignore: true) String id,
      @required String vandorName,
      @required int price,
      @required String itemType}) = _$_Itemdto;

  factory _Itemdto.fromJson(Map<String, dynamic> json) = _$_Itemdto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get vandorName;
  @override
  int get price;
  @override
  String get itemType;
  @override
  _$ItemdtoCopyWith<_Itemdto> get copyWith;
}
