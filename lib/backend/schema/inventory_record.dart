import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'inventory_record.g.dart';

abstract class InventoryRecord
    implements Built<InventoryRecord, InventoryRecordBuilder> {
  static Serializer<InventoryRecord> get serializer =>
      _$inventoryRecordSerializer;

  String? get name;

  double? get price;

  int? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(InventoryRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inventory');

  static Stream<InventoryRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<InventoryRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  InventoryRecord._();
  factory InventoryRecord([void Function(InventoryRecordBuilder) updates]) =
      _$InventoryRecord;

  static InventoryRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createInventoryRecordData({
  String? name,
  double? price,
  int? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    InventoryRecord.serializer,
    InventoryRecord(
      (i) => i
        ..name = name
        ..price = price
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
