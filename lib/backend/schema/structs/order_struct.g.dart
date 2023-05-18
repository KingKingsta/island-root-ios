// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrderStruct> _$orderStructSerializer = new _$OrderStructSerializer();

class _$OrderStructSerializer implements StructuredSerializer<OrderStruct> {
  @override
  final Iterable<Type> types = const [OrderStruct, _$OrderStruct];
  @override
  final String wireName = 'OrderStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrderStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'item',
      serializers.serialize(object.item,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ItemStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.customerName;
    if (value != null) {
      result
        ..add('customerName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerId;
    if (value != null) {
      result
        ..add('customerId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.orderId;
    if (value != null) {
      result
        ..add('orderId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrderStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrderStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'customerName':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customerId':
          result.customerId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'orderId':
          result.orderId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'item':
          result.item.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ItemStruct)]))!
              as BuiltList<Object?>);
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

class _$OrderStruct extends OrderStruct {
  @override
  final String? customerName;
  @override
  final String? customerId;
  @override
  final String? orderId;
  @override
  final BuiltList<ItemStruct> item;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$OrderStruct([void Function(OrderStructBuilder)? updates]) =>
      (new OrderStructBuilder()..update(updates))._build();

  _$OrderStruct._(
      {this.customerName,
      this.customerId,
      this.orderId,
      required this.item,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(item, r'OrderStruct', 'item');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'OrderStruct', 'firestoreUtilData');
  }

  @override
  OrderStruct rebuild(void Function(OrderStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderStructBuilder toBuilder() => new OrderStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderStruct &&
        customerName == other.customerName &&
        customerId == other.customerId &&
        orderId == other.orderId &&
        item == other.item &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, customerName.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, item.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderStruct')
          ..add('customerName', customerName)
          ..add('customerId', customerId)
          ..add('orderId', orderId)
          ..add('item', item)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class OrderStructBuilder implements Builder<OrderStruct, OrderStructBuilder> {
  _$OrderStruct? _$v;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  ListBuilder<ItemStruct>? _item;
  ListBuilder<ItemStruct> get item =>
      _$this._item ??= new ListBuilder<ItemStruct>();
  set item(ListBuilder<ItemStruct>? item) => _$this._item = item;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  OrderStructBuilder() {
    OrderStruct._initializeBuilder(this);
  }

  OrderStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _customerName = $v.customerName;
      _customerId = $v.customerId;
      _orderId = $v.orderId;
      _item = $v.item.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrderStruct;
  }

  @override
  void update(void Function(OrderStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderStruct build() => _build();

  _$OrderStruct _build() {
    _$OrderStruct _$result;
    try {
      _$result = _$v ??
          new _$OrderStruct._(
              customerName: customerName,
              customerId: customerId,
              orderId: orderId,
              item: item.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'OrderStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'item';
        item.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrderStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
