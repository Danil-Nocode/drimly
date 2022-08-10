import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'audios_record.g.dart';

abstract class AudiosRecord
    implements Built<AudiosRecord, AudiosRecordBuilder> {
  static Serializer<AudiosRecord> get serializer => _$audiosRecordSerializer;

  String? get title;

  String? get audio;

  String? get cover;

  int? get minute;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AudiosRecordBuilder builder) => builder
    ..title = ''
    ..audio = ''
    ..cover = ''
    ..minute = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('audios');

  static Stream<AudiosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AudiosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AudiosRecord._();
  factory AudiosRecord([void Function(AudiosRecordBuilder) updates]) =
      _$AudiosRecord;

  static AudiosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAudiosRecordData({
  String? title,
  String? audio,
  String? cover,
  int? minute,
}) {
  final firestoreData = serializers.toFirestore(
    AudiosRecord.serializer,
    AudiosRecord(
      (a) => a
        ..title = title
        ..audio = audio
        ..cover = cover
        ..minute = minute,
    ),
  );

  return firestoreData;
}
