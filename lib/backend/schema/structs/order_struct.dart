import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'order_struct.g.dart';

abstract class OrderStruct implements Built<OrderStruct, OrderStructBuilder> {
  static Serializer<OrderStruct> get serializer => _$orderStructSerializer;

  String? get customerName;

  String? get customerId;

  String? get orderId;

  BuiltList<ItemStruct> get item;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(OrderStructBuilder builder) => builder
    ..customerName = ''
    ..customerId = ''
    ..orderId = ''
    ..item = ListBuilder()
    ..firestoreUtilData = FirestoreUtilData();

  OrderStruct._();
  factory OrderStruct([void Function(OrderStructBuilder) updates]) =
      _$OrderStruct;
}

OrderStruct createOrderStruct({
  String? customerName,
  String? customerId,
  String? orderId,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrderStruct(
      (o) => o
        ..customerName = customerName
        ..customerId = customerId
        ..orderId = orderId
        ..item = null
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

OrderStruct? updateOrderStruct(
  OrderStruct? order, {
  bool clearUnsetFields = true,
}) =>
    order != null
        ? (order.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addOrderStructData(
  Map<String, dynamic> firestoreData,
  OrderStruct? order,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (order == null) {
    return;
  }
  if (order.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && order.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final orderData = getOrderFirestoreData(order, forFieldValue);
  final nestedData = orderData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = order.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getOrderFirestoreData(
  OrderStruct? order, [
  bool forFieldValue = false,
]) {
  if (order == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(OrderStruct.serializer, order);

  // Add any Firestore field values
  order.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrderListFirestoreData(
  List<OrderStruct>? orders,
) =>
    orders?.map((o) => getOrderFirestoreData(o, true)).toList() ?? [];
