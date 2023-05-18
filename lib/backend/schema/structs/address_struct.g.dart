// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_struct.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressStruct> _$addressStructSerializer =
    new _$AddressStructSerializer();

class _$AddressStructSerializer implements StructuredSerializer<AddressStruct> {
  @override
  final Iterable<Type> types = const [AddressStruct, _$AddressStruct];
  @override
  final String wireName = 'AddressStruct';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddressStruct object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'firestoreUtilData',
      serializers.serialize(object.firestoreUtilData,
          specifiedType: const FullType(FirestoreUtilData)),
    ];
    Object? value;
    value = object.street;
    if (value != null) {
      result
        ..add('street')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.city;
    if (value != null) {
      result
        ..add('city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.country;
    if (value != null) {
      result
        ..add('country')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postalCode;
    if (value != null) {
      result
        ..add('postal_code')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AddressStruct deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressStructBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postal_code':
          result.postalCode = serializers.deserialize(value,
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

class _$AddressStruct extends AddressStruct {
  @override
  final String? street;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final int? postalCode;
  @override
  final FirestoreUtilData firestoreUtilData;

  factory _$AddressStruct([void Function(AddressStructBuilder)? updates]) =>
      (new AddressStructBuilder()..update(updates))._build();

  _$AddressStruct._(
      {this.street,
      this.city,
      this.state,
      this.country,
      this.postalCode,
      required this.firestoreUtilData})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        firestoreUtilData, r'AddressStruct', 'firestoreUtilData');
  }

  @override
  AddressStruct rebuild(void Function(AddressStructBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressStructBuilder toBuilder() => new AddressStructBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressStruct &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        country == other.country &&
        postalCode == other.postalCode &&
        firestoreUtilData == other.firestoreUtilData;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, state.hashCode);
    _$hash = $jc(_$hash, country.hashCode);
    _$hash = $jc(_$hash, postalCode.hashCode);
    _$hash = $jc(_$hash, firestoreUtilData.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressStruct')
          ..add('street', street)
          ..add('city', city)
          ..add('state', state)
          ..add('country', country)
          ..add('postalCode', postalCode)
          ..add('firestoreUtilData', firestoreUtilData))
        .toString();
  }
}

class AddressStructBuilder
    implements Builder<AddressStruct, AddressStructBuilder> {
  _$AddressStruct? _$v;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _state;
  String? get state => _$this._state;
  set state(String? state) => _$this._state = state;

  String? _country;
  String? get country => _$this._country;
  set country(String? country) => _$this._country = country;

  int? _postalCode;
  int? get postalCode => _$this._postalCode;
  set postalCode(int? postalCode) => _$this._postalCode = postalCode;

  FirestoreUtilData? _firestoreUtilData;
  FirestoreUtilData? get firestoreUtilData => _$this._firestoreUtilData;
  set firestoreUtilData(FirestoreUtilData? firestoreUtilData) =>
      _$this._firestoreUtilData = firestoreUtilData;

  AddressStructBuilder() {
    AddressStruct._initializeBuilder(this);
  }

  AddressStructBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _street = $v.street;
      _city = $v.city;
      _state = $v.state;
      _country = $v.country;
      _postalCode = $v.postalCode;
      _firestoreUtilData = $v.firestoreUtilData;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressStruct other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddressStruct;
  }

  @override
  void update(void Function(AddressStructBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressStruct build() => _build();

  _$AddressStruct _build() {
    final _$result = _$v ??
        new _$AddressStruct._(
            street: street,
            city: city,
            state: state,
            country: country,
            postalCode: postalCode,
            firestoreUtilData: BuiltValueNullFieldError.checkNotNull(
                firestoreUtilData, r'AddressStruct', 'firestoreUtilData'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
