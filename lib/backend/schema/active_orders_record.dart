import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'active_orders_record.g.dart';

abstract class ActiveOrdersRecord
    implements Built<ActiveOrdersRecord, ActiveOrdersRecordBuilder> {
  static Serializer<ActiveOrdersRecord> get serializer =>
      _$activeOrdersRecordSerializer;

  String? get id;

  TabStruct get tab;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(ActiveOrdersRecordBuilder builder) => builder
    ..id = ''
    ..tab = TabStructBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ActiveOrders')
          : FirebaseFirestore.instance.collectionGroup('ActiveOrders');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ActiveOrders').doc();

  static Stream<ActiveOrdersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ActiveOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ActiveOrdersRecord._();
  factory ActiveOrdersRecord(
          [void Function(ActiveOrdersRecordBuilder) updates]) =
      _$ActiveOrdersRecord;

  static ActiveOrdersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createActiveOrdersRecordData({
  String? id,
  TabStruct? tab,
}) {
  final firestoreData = serializers.toFirestore(
    ActiveOrdersRecord.serializer,
    ActiveOrdersRecord(
      (a) => a
        ..id = id
        ..tab = TabStructBuilder(),
    ),
  );

  // Handle nested data for "tab" field.
  addTabStructData(firestoreData, tab, 'tab');

  return firestoreData;
}
