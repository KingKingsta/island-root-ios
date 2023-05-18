import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'locations_record.g.dart';

abstract class LocationsRecord
    implements Built<LocationsRecord, LocationsRecordBuilder> {
  static Serializer<LocationsRecord> get serializer =>
      _$locationsRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LocationsRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocationsRecord._();
  factory LocationsRecord([void Function(LocationsRecordBuilder) updates]) =
      _$LocationsRecord;

  static LocationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocationsRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    LocationsRecord.serializer,
    LocationsRecord(
      (l) => l..name = name,
    ),
  );

  return firestoreData;
}
