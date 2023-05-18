// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ItemStruct> _$itemStructSerializer = new _$ItemStructSerializer();

class _$ItemStructSerializer implements StructuredSerializer<ItemStruct> {
  @override
  final Iterable<Type> types = const [ItemStruct, _$ItemStruct];
  @override
  final String wireName = 'ItemStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, ItemStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cost;
    if (value != null) {
      result
        ..add('cost')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ItemStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ItemStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cost':
          result.cost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'firestoreUtilData':
          result.firestoreUtilData = serializers.deserialize(value,
                  specifiedType: const FullType(FirestoreUtilData))!
              as FirestoreUtilData;
          break;
      }
    }

    return result.build();
  }
}

class _$ItemStruct extends ItemStruct {
  @override
  final String? name;
  @override
  final int? cost;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$ItemStruct([void Function(ItemStructBuilder)? updates]) =>
      (new ItemStructBuilder()..update(updates))._build();

  _$ItemStruct._({this.name, this.cost, required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'ItemStruct', 'firestoreUtilData');
  }

  @override
  ItemStruct rebuild(void Function(ItemStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemStructBuilder toBuilder() => new ItemStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ItemStruct &&
        name == other.name &&
        cost == other.cost &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, cost.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ItemStruct')
          ..add('name', name)
          ..add('cost', cost)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class ItemStructBuilder implements Builder<ItemStruct, ItemStructBuilder> {
  _$ItemStruct? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _cost;
  int? get cost => _$this._cost;
  set cost(int? cost) => _$this._cost = cost;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  ItemStructBuilder() {
    ItemStruct._initializeBuilder(this);
  }

  ItemStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _cost = $v.cost;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ItemStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ItemStruct;
  }

  @override
  void update(void Function(ItemStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ItemStruct build() => _build();

  _$ItemStruct _build() {
    final _$result = _$v ??
        new _$ItemStruct._(
            name: name,
            cost: cost,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'ItemStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
