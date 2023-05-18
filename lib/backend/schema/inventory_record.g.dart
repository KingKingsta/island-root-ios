// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InventoryRecord> _$inventoryRecordSerializer =
    new _$InventoryRecordSerializer();

class _$InventoryRecordSerializer
    implements StructuredSerializer<InventoryRecord> {
  @override
  final Iterable<Type> types = const [InventoryRecord, _$InventoryRecord];
  @override
  final String wireName = 'InventoryRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, InventoryRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  InventoryRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InventoryRecordBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$InventoryRecord extends InventoryRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$InventoryRecord([void Function(InventoryRecordBuilder)? updates]) =>
      (new InventoryRecordBuilder()..update(updates))._build();

  _$InventoryRecord._({this.name, this.price, this.quantity, this.ffRef})
      : super._();

  @override
  InventoryRecord rebuild(void Function(InventoryRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InventoryRecordBuilder toBuilder() =>
      new InventoryRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InventoryRecord &&
        name == other.name &&
        price == other.price &&
        quantity == other.quantity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InventoryRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('quantity', quantity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class InventoryRecordBuilder
    implements Builder<InventoryRecord, InventoryRecordBuilder> {
  _$InventoryRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  InventoryRecordBuilder() {
    InventoryRecord._initializeBuilder(this);
  }

  InventoryRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _quantity = $v.quantity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InventoryRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InventoryRecord;
  }

  @override
  void update(void Function(InventoryRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InventoryRecord build() => _build();

  _$InventoryRecord _build() {
    final _$result = _$v ??
        new _$InventoryRecord._(
            name: name, price: price, quantity: quantity, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
