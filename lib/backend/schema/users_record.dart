import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get question1;

  String? get question2;

  double? get rating;

  @BuiltValueField(wireName: 'listen_audio')
  BuiltList<DocumentReference>? get listenAudio;

  String? get status;

  int? get minuteListen;

  int? get sessionCount;

  bool? get isActiveChat;

  bool? get isPsychologist;

  bool? get moneyspace;

  DocumentReference? get psychologist;

  BuiltList<DocumentReference>? get clientsPsychologist;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..question1 = ''
    ..question2 = ''
    ..rating = 0.0
    ..listenAudio = ListBuilder()
    ..status = ''
    ..minuteListen = 0
    ..sessionCount = 0
    ..isActiveChat = false
    ..isPsychologist = false
    ..moneyspace = false
    ..clientsPsychologist = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? question1,
  String? question2,
  double? rating,
  String? status,
  int? minuteListen,
  int? sessionCount,
  bool? isActiveChat,
  bool? isPsychologist,
  bool? moneyspace,
  DocumentReference? psychologist,
  List<DocumentReference>? clientsPsychologist,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..question1 = question1
        ..question2 = question2
        ..rating = rating
        ..listenAudio = null
        ..status = status
        ..minuteListen = minuteListen
        ..sessionCount = sessionCount
        ..isActiveChat = isActiveChat
        ..moneyspace = moneyspace
        ..isPsychologist = isPsychologist
        ..psychologist = psychologist,
    ),
  );

  return firestoreData;
}
