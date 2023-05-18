// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ActiveOrdersRecord> _$activeOrdersRecordSerializer =
    new _$ActiveOrdersRecordSerializer();

class _$ActiveOrdersRecordSerializer
    implements StructuredSerializer<ActiveOrdersRecord> {
  @override
  final Iterable<Type> types = const [ActiveOrdersRecord, _$ActiveOrdersRecord];
  @override
  final String wireName = 'ActiveOrdersRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ActiveOrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tab',
      serializers.serialize(object.tab,
          specifiedType: const FullType(TabStruct)),
    ];
    Object? value;
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ActiveOrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActiveOrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tab':
          result.tab.replace(serializers.deserialize(value,
              specifiedType: const FullType(TabStruct))! as TabStruct);
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

class _$ActiveOrdersRecord extends ActiveOrdersRecord {
  @override
  final String? id;
  @override
  final TabStruct tab;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ActiveOrdersRecord(
          [void Function(ActiveOrdersRecordBuilder)? updates]) =>
      (new ActiveOrdersRecordBuilder()..update(updates))._build();

  _$ActiveOrdersRecord._({this.id, required this.tab, this.ffRef}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tab, r'ActiveOrdersRecord', 'tab');
  }

  @override
  ActiveOrdersRecord rebuild(
          void Function(ActiveOrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActiveOrdersRecordBuilder toBuilder() =>
      new ActiveOrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActiveOrdersRecord &&
        id == other.id &&
        tab == other.tab &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tab.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActiveOrdersRecord')
          ..add('id', id)
          ..add('tab', tab)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ActiveOrdersRecordBuilder
    implements Builder<ActiveOrdersRecord, ActiveOrdersRecordBuilder> {
  _$ActiveOrdersRecord? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  TabStructBuilder? _tab;
  TabStructBuilder get tab => _$this._tab ??= new TabStructBuilder();
  set tab(TabStructBuilder? tab) => _$this._tab = tab;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ActiveOrdersRecordBuilder() {
    ActiveOrdersRecord._initializeBuilder(this);
  }

  ActiveOrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tab = $v.tab.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActiveOrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ActiveOrdersRecord;
  }

  @override
  void update(void Function(ActiveOrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActiveOrdersRecord build() => _build();

  _$ActiveOrdersRecord _build() {
    _$ActiveOrdersRecord _$result;
    try {
      _$result = _$v ??
          new _$ActiveOrdersRecord._(id: id, tab: tab.build(), ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'tab';
        tab.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ActiveOrdersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
