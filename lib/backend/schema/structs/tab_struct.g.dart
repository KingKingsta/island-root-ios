// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TabStruct> _$tabStructSerializer = new _$TabStructSerializer();

class _$TabStructSerializer implements StructuredSerializer<TabStruct> {
  @override
  final Iterable<Type> types = const [TabStruct, _$TabStruct];
  @override
  final String wireName = 'TabStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, TabStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'order',
      serializers.serialize(object.order,
          specifiedType:
              const FullType(BuiltList, const [const FullType(OrderStruct)])),
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.tabId;
    if (value != null) {
      result
        ..add('tabId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.creationTime;
    if (value != null) {
      result
        ..add('creation_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  TabStruct deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TabStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tabId':
          result.tabId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'creation_time':
          result.creationTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'order':
          result.order.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OrderStruct)]))!
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

class _$TabStruct extends TabStruct {
  @override
  final String? tabId;
  @override
  final DateTime? creationTime;
  @override
  final BuiltList<OrderStruct> order;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$TabStruct([void Function(TabStructBuilder)? updates]) =>
      (new TabStructBuilder()..update(updates))._build();

  _$TabStruct._(
      {this.tabId,
      this.creationTime,
      required this.order,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(order, r'TabStruct', 'order');
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'TabStruct', 'firestoreUtilData');
  }

  @override
  TabStruct rebuild(void Function(TabStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TabStructBuilder toBuilder() => new TabStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TabStruct &&
        tabId == other.tabId &&
        creationTime == other.creationTime &&
        order == other.order &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tabId.hashCode);
    _$hash = $jc(_$hash, creationTime.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TabStruct')
          ..add('tabId', tabId)
          ..add('creationTime', creationTime)
          ..add('order', order)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class TabStructBuilder implements Builder<TabStruct, TabStructBuilder> {
  _$TabStruct? _$v;

  String? _tabId;
  String? get tabId => _$this._tabId;
  set tabId(String? tabId) => _$this._tabId = tabId;

  DateTime? _creationTime;
  DateTime? get creationTime => _$this._creationTime;
  set creationTime(DateTime? creationTime) =>
      _$this._creationTime = creationTime;

  ListBuilder<OrderStruct>? _order;
  ListBuilder<OrderStruct> get order =>
      _$this._order ??= new ListBuilder<OrderStruct>();
  set order(ListBuilder<OrderStruct>? order) => _$this._order = order;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  TabStructBuilder() {
    TabStruct._initializeBuilder(this);
  }

  TabStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tabId = $v.tabId;
      _creationTime = $v.creationTime;
      _order = $v.order.toBuilder();
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TabStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TabStruct;
  }

  @override
  void update(void Function(TabStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TabStruct build() => _build();

  _$TabStruct _build() {
    _$TabStruct _$result;
    try {
      _$result = _$v ??
          new _$TabStruct._(
              tabId: tabId,
              creationTime: creationTime,
              order: order.build(),
              firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                  firestoreUtilData, r'TabStruct', 'firestoreUtilData'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        order.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TabStruct', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
