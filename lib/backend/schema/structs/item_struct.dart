import 'dart:async';

import '../index.dart';
import '../serializers.dart';
import 'package:built_value/built_value.dart';

part 'item_struct.g.dart';

abstract class ItemStruct implements Built<ItemStruct, ItemStructBuilder> {
  static Serializer<ItemStruct> get serializer => _$itemStructSerializer;

  String? get name;

  int? get cost;

  /// Utility class for Firestore updates
  FirestoreUtilData get firestoreUtilData;

  static void _initializeBuilder(ItemStructBuilder builder) => builder
    ..name = ''
    ..cost = 0
    ..firestoreUtilData = FirestoreUtilData();

  ItemStruct._();
  factory ItemStruct([void Function(ItemStructBuilder) updates]) = _$ItemStruct;
}

ItemStruct createItemStruct({
  String? name,
  int? cost,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ItemStruct(
      (i) => i
        ..name = name
        ..cost = cost
        ..firestoreUtilData = FirestoreUtilData(
          clearUnsetFields: clearUnsetFields,
          create: create,
          delete: delete,
          fieldValues: fieldValues,
        ),
    );

ItemStruct? updateItemStruct(
  ItemStruct? item, {
  bool clearUnsetFields = true,
}) =>
    item != null
        ? (item.toBuilder()
              ..firestoreUtilData =
                  FirestoreUtilData(clearUnsetFields: clearUnsetFields))
            .build()
        : null;

void addItemStructData(
  Map<String, dynamic> firestoreData,
  ItemStruct? item,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (item == null) {
    return;
  }
  if (item.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && item.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final itemData = getItemFirestoreData(item, forFieldValue);
  final nestedData = itemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = item.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);

  return;
}

Map<String, dynamic> getItemFirestoreData(
  ItemStruct? item, [
  bool forFieldValue = false,
]) {
  if (item == null) {
    return {};
  }
  final firestoreData = serializers.toFirestore(ItemStruct.serializer, item);

  // Add any Firestore field values
  item.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getItemListFirestoreData(
  List<ItemStruct>? items,
) =>
    items?.map((i) => getItemFirestoreData(i, true)).toList() ?? [];
