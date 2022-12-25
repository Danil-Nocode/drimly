import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'meditations_n_y_record.g.dart';

abstract class MeditationsNYRecord
    implements Built<MeditationsNYRecord, MeditationsNYRecordBuilder> {
  static Serializer<MeditationsNYRecord> get serializer =>
      _$meditationsNYRecordSerializer;

  String? get title;

  String? get cover;

  String? get coverMini;

  bool? get isView;

  DocumentReference? get section;

  String? get countLesson;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MeditationsNYRecordBuilder builder) => builder
    ..title = ''
    ..cover = ''
    ..coverMini = ''
    ..isView = false
    ..countLesson = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditationsNY');

  static Stream<MeditationsNYRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MeditationsNYRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MeditationsNYRecord._();
  factory MeditationsNYRecord(
          [void Function(MeditationsNYRecordBuilder) updates]) =
      _$MeditationsNYRecord;

  static MeditationsNYRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMeditationsNYRecordData({
  String? title,
  String? cover,
  String? coverMini,
  bool? isView,
  DocumentReference? section,
  String? countLesson,
}) {
  final firestoreData = serializers.toFirestore(
    MeditationsNYRecord.serializer,
    MeditationsNYRecord(
      (m) => m
        ..title = title
        ..cover = cover
        ..coverMini = coverMini
        ..isView = isView
        ..section = section
        ..countLesson = countLesson,
    ),
  );

  return firestoreData;
}
