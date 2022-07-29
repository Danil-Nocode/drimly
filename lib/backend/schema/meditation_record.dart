import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meditation_record.g.dart';

abstract class MeditationRecord
    implements Built<MeditationRecord, MeditationRecordBuilder> {
  static Serializer<MeditationRecord> get serializer =>
      _$meditationRecordSerializer;

  String? get title;

  String? get cover;

  BuiltList<DocumentReference>? get audios;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MeditationRecordBuilder builder) => builder
    ..title = ''
    ..cover = ''
    ..audios = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditation');

  static Stream<MeditationRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MeditationRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MeditationRecord._();
  factory MeditationRecord([void Function(MeditationRecordBuilder) updates]) =
      _$MeditationRecord;

  static MeditationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMeditationRecordData({
  String? title,
  String? cover,
}) {
  final firestoreData = serializers.toFirestore(
    MeditationRecord.serializer,
    MeditationRecord(
      (m) => m
        ..title = title
        ..cover = cover
        ..audios = null,
    ),
  );

  return firestoreData;
}
