import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'practices_record.g.dart';

abstract class PracticesRecord
    implements Built<PracticesRecord, PracticesRecordBuilder> {
  static Serializer<PracticesRecord> get serializer =>
      _$practicesRecordSerializer;

  String? get title;

  BuiltList<DocumentReference>? get audios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PracticesRecordBuilder builder) => builder
    ..title = ''
    ..audios = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('practices');

  static Stream<PracticesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PracticesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PracticesRecord._();
  factory PracticesRecord([void Function(PracticesRecordBuilder) updates]) =
      _$PracticesRecord;

  static PracticesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPracticesRecordData({
  String? title,
}) {
  final firestoreData = serializers.toFirestore(
    PracticesRecord.serializer,
    PracticesRecord(
      (p) => p
        ..title = title
        ..audios = null,
    ),
  );

  return firestoreData;
}
