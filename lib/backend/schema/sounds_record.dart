import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sounds_record.g.dart';

abstract class SoundsRecord
    implements Built<SoundsRecord, SoundsRecordBuilder> {
  static Serializer<SoundsRecord> get serializer => _$soundsRecordSerializer;

  DocumentReference? get audio;

  int? get index;

  String? get coverMini;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SoundsRecordBuilder builder) => builder
    ..index = 0
    ..coverMini = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sounds');

  static Stream<SoundsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SoundsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SoundsRecord._();
  factory SoundsRecord([void Function(SoundsRecordBuilder) updates]) =
      _$SoundsRecord;

  static SoundsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSoundsRecordData({
  DocumentReference? audio,
  int? index,
  String? coverMini,
}) {
  final firestoreData = serializers.toFirestore(
    SoundsRecord.serializer,
    SoundsRecord(
      (s) => s
        ..audio = audio
        ..index = index
        ..coverMini = coverMini,
    ),
  );

  return firestoreData;
}
