import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sections_record.g.dart';

abstract class SectionsRecord
    implements Built<SectionsRecord, SectionsRecordBuilder> {
  static Serializer<SectionsRecord> get serializer =>
      _$sectionsRecordSerializer;

  String? get title;

  String? get duration;

  BuiltList<DocumentReference>? get audios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SectionsRecordBuilder builder) => builder
    ..title = ''
    ..duration = ''
    ..audios = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sections');

  static Stream<SectionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SectionsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SectionsRecord._();
  factory SectionsRecord([void Function(SectionsRecordBuilder) updates]) =
      _$SectionsRecord;

  static SectionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSectionsRecordData({
  String? title,
  String? duration,
}) {
  final firestoreData = serializers.toFirestore(
    SectionsRecord.serializer,
    SectionsRecord(
      (s) => s
        ..title = title
        ..duration = duration
        ..audios = null,
    ),
  );

  return firestoreData;
}
