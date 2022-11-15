import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tasks_record.g.dart';

abstract class TasksRecord implements Built<TasksRecord, TasksRecordBuilder> {
  static Serializer<TasksRecord> get serializer => _$tasksRecordSerializer;

  String? get name;

  String? get description;

  double? get difficult;

  String? get image;

  DocumentReference? get audio;

  BuiltList<String>? get images;

  BuiltList<String>? get videos;

  BuiltList<String>? get files;

  DocumentReference? get section;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TasksRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..difficult = 0.0
    ..image = ''
    ..images = ListBuilder()
    ..videos = ListBuilder()
    ..files = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TasksRecord._();
  factory TasksRecord([void Function(TasksRecordBuilder) updates]) =
      _$TasksRecord;

  static TasksRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTasksRecordData({
  String? name,
  String? description,
  double? difficult,
  String? image,
  DocumentReference? audio,
  DocumentReference? section,
}) {
  final firestoreData = serializers.toFirestore(
    TasksRecord.serializer,
    TasksRecord(
      (t) => t
        ..name = name
        ..description = description
        ..difficult = difficult
        ..image = image
        ..audio = audio
        ..images = null
        ..videos = null
        ..files = null
        ..section = section,
    ),
  );

  return firestoreData;
}
