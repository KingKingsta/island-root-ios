// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ActiveOrdersRecord.serializer)
      ..add(AddressStruct.serializer)
      ..add(InventoryRecord.serializer)
      ..add(ItemStruct.serializer)
      ..add(LocationsRecord.serializer)
      ..add(OrderStruct.serializer)
      ..add(TabStruct.serializer)
      ..add(UsersRecord.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ItemStruct)]),
          () => new ListBuilder<ItemStruct>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OrderStruct)]),
          () => new ListBuilder<OrderStruct>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
