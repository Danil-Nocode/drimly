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

  String? get desctiption;

  String? get cover;

  String? get duration;

  BuiltList<DocumentReference>? get sections;

  String? get coverBig;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PracticesRecordBuilder builder) => builder
    ..title = ''
    ..desctiption = ''
    ..cover = ''
    ..duration = ''
    ..sections = ListBuilder()
    ..coverBig = '';

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
  String? desctiption,
  String? cover,
  String? duration,
  String? coverBig,
}) {
  final firestoreData = serializers.toFirestore(
    PracticesRecord.serializer,
    PracticesRecord(
      (p) => p
        ..title = title
        ..desctiption = desctiption
        ..cover = cover
        ..duration = duration
        ..sections = null
        ..coverBig = coverBig,
    ),
  );

  return firestoreData;
}
