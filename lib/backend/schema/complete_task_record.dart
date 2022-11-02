import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'complete_task_record.g.dart';

abstract class CompleteTaskRecord
    implements Built<CompleteTaskRecord, CompleteTaskRecordBuilder> {
  static Serializer<CompleteTaskRecord> get serializer =>
      _$completeTaskRecordSerializer;

  DocumentReference? get task;

  DocumentReference? get user;

  String? get status;

  String? get feedback;

  double? get rate;

  DateTime? get datetime;

  DocumentReference? get whoChecked;

  BuiltList<String>? get imagesAnswer;

  String? get textAnswer;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CompleteTaskRecordBuilder builder) => builder
    ..status = ''
    ..feedback = ''
    ..rate = 0.0
    ..imagesAnswer = ListBuilder()
    ..textAnswer = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('completeTask');

  static Stream<CompleteTaskRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CompleteTaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CompleteTaskRecord._();
  factory CompleteTaskRecord(
          [void Function(CompleteTaskRecordBuilder) updates]) =
      _$CompleteTaskRecord;

  static CompleteTaskRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCompleteTaskRecordData({
  DocumentReference? task,
  DocumentReference? user,
  String? status,
  String? feedback,
  double? rate,
  DateTime? datetime,
  DocumentReference? whoChecked,
  String? textAnswer,
}) {
  final firestoreData = serializers.toFirestore(
    CompleteTaskRecord.serializer,
    CompleteTaskRecord(
      (c) => c
        ..task = task
        ..user = user
        ..status = status
        ..feedback = feedback
        ..rate = rate
        ..datetime = datetime
        ..whoChecked = whoChecked
        ..imagesAnswer = null
        ..textAnswer = textAnswer,
    ),
  );

  return firestoreData;
}
