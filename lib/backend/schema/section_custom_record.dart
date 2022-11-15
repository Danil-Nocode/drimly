import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'section_custom_record.g.dart';

abstract class SectionCustomRecord
    implements Built<SectionCustomRecord, SectionCustomRecordBuilder> {
  static Serializer<SectionCustomRecord> get serializer =>
      _$sectionCustomRecordSerializer;

  String? get title;

  String? get duration;

  BuiltList<DocumentReference>? get audios;

  BuiltList<String>? get videos;

  BuiltList<String>? get files;

  bool? get task;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SectionCustomRecordBuilder builder) => builder
    ..title = ''
    ..duration = ''
    ..audios = ListBuilder()
    ..videos = ListBuilder()
    ..files = ListBuilder()
    ..task = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sectionCustom');

  static Stream<SectionCustomRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SectionCustomRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SectionCustomRecord._();
  factory SectionCustomRecord(
          [void Function(SectionCustomRecordBuilder) updates]) =
      _$SectionCustomRecord;

  static SectionCustomRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSectionCustomRecordData({
  String? title,
  String? duration,
  bool? task,
}) {
  final firestoreData = serializers.toFirestore(
    SectionCustomRecord.serializer,
    SectionCustomRecord(
      (s) => s
        ..title = title
        ..duration = duration
        ..audios = null
        ..videos = null
        ..files = null
        ..task = task,
    ),
  );

  return firestoreData;
}
