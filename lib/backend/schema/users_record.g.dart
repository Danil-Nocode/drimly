// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.question1;
    if (value != null) {
      result
        ..add('question1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.question2;
    if (value != null) {
      result
        ..add('question2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.listenAudio;
    if (value != null) {
      result
        ..add('listen_audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.minuteListen;
    if (value != null) {
      result
        ..add('minuteListen')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sessionCount;
    if (value != null) {
      result
        ..add('sessionCount')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.isActiveChat;
    if (value != null) {
      result
        ..add('isActiveChat')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isPsychologist;
    if (value != null) {
      result
        ..add('isPsychologist')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.psychologist;
    if (value != null) {
      result
        ..add('psychologist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.clientsPsychologist;
    if (value != null) {
      result
        ..add('clientsPsychologist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'question1':
          result.question1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'question2':
          result.question2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'listen_audio':
          result.listenAudio.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'minuteListen':
          result.minuteListen = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sessionCount':
          result.sessionCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'isActiveChat':
          result.isActiveChat = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isPsychologist':
          result.isPsychologist = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'psychologist':
          result.psychologist = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'clientsPsychologist':
          result.clientsPsychologist.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? question1;
  @override
  final String? question2;
  @override
  final double? rating;
  @override
  final BuiltList<DocumentReference<Object?>>? listenAudio;
  @override
  final String? status;
  @override
  final int? minuteListen;
  @override
  final int? sessionCount;
  @override
  final bool? isActiveChat;
  @override
  final bool? isPsychologist;
  @override
  final DocumentReference<Object?>? psychologist;
  @override
  final BuiltList<DocumentReference<Object?>>? clientsPsychologist;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.question1,
      this.question2,
      this.rating,
      this.listenAudio,
      this.status,
      this.minuteListen,
      this.sessionCount,
      this.isActiveChat,
      this.isPsychologist,
      this.psychologist,
      this.clientsPsychologist,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        question1 == other.question1 &&
        question2 == other.question2 &&
        rating == other.rating &&
        listenAudio == other.listenAudio &&
        status == other.status &&
        minuteListen == other.minuteListen &&
        sessionCount == other.sessionCount &&
        isActiveChat == other.isActiveChat &&
        isPsychologist == other.isPsychologist &&
        psychologist == other.psychologist &&
        clientsPsychologist == other.clientsPsychologist &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            email
                                                                                .hashCode),
                                                                        displayName
                                                                            .hashCode),
                                                                    photoUrl
                                                                        .hashCode),
                                                                uid.hashCode),
                                                            createdTime
                                                                .hashCode),
                                                        phoneNumber.hashCode),
                                                    question1.hashCode),
                                                question2.hashCode),
                                            rating.hashCode),
                                        listenAudio.hashCode),
                                    status.hashCode),
                                minuteListen.hashCode),
                            sessionCount.hashCode),
                        isActiveChat.hashCode),
                    isPsychologist.hashCode),
                psychologist.hashCode),
            clientsPsychologist.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('question1', question1)
          ..add('question2', question2)
          ..add('rating', rating)
          ..add('listenAudio', listenAudio)
          ..add('status', status)
          ..add('minuteListen', minuteListen)
          ..add('sessionCount', sessionCount)
          ..add('isActiveChat', isActiveChat)
          ..add('isPsychologist', isPsychologist)
          ..add('psychologist', psychologist)
          ..add('clientsPsychologist', clientsPsychologist)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _question1;
  String? get question1 => _$this._question1;
  set question1(String? question1) => _$this._question1 = question1;

  String? _question2;
  String? get question2 => _$this._question2;
  set question2(String? question2) => _$this._question2 = question2;

  double? _rating;
  double? get rating => _$this._rating;
  set rating(double? rating) => _$this._rating = rating;

  ListBuilder<DocumentReference<Object?>>? _listenAudio;
  ListBuilder<DocumentReference<Object?>> get listenAudio =>
      _$this._listenAudio ??= new ListBuilder<DocumentReference<Object?>>();
  set listenAudio(ListBuilder<DocumentReference<Object?>>? listenAudio) =>
      _$this._listenAudio = listenAudio;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _minuteListen;
  int? get minuteListen => _$this._minuteListen;
  set minuteListen(int? minuteListen) => _$this._minuteListen = minuteListen;

  int? _sessionCount;
  int? get sessionCount => _$this._sessionCount;
  set sessionCount(int? sessionCount) => _$this._sessionCount = sessionCount;

  bool? _isActiveChat;
  bool? get isActiveChat => _$this._isActiveChat;
  set isActiveChat(bool? isActiveChat) => _$this._isActiveChat = isActiveChat;

  bool? _isPsychologist;
  bool? get isPsychologist => _$this._isPsychologist;
  set isPsychologist(bool? isPsychologist) =>
      _$this._isPsychologist = isPsychologist;

  DocumentReference<Object?>? _psychologist;
  DocumentReference<Object?>? get psychologist => _$this._psychologist;
  set psychologist(DocumentReference<Object?>? psychologist) =>
      _$this._psychologist = psychologist;

  ListBuilder<DocumentReference<Object?>>? _clientsPsychologist;
  ListBuilder<DocumentReference<Object?>> get clientsPsychologist =>
      _$this._clientsPsychologist ??=
          new ListBuilder<DocumentReference<Object?>>();
  set clientsPsychologist(
          ListBuilder<DocumentReference<Object?>>? clientsPsychologist) =>
      _$this._clientsPsychologist = clientsPsychologist;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _question1 = $v.question1;
      _question2 = $v.question2;
      _rating = $v.rating;
      _listenAudio = $v.listenAudio?.toBuilder();
      _status = $v.status;
      _minuteListen = $v.minuteListen;
      _sessionCount = $v.sessionCount;
      _isActiveChat = $v.isActiveChat;
      _isPsychologist = $v.isPsychologist;
      _psychologist = $v.psychologist;
      _clientsPsychologist = $v.clientsPsychologist?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    _$UsersRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersRecord._(
              email: email,
              displayName: displayName,
              photoUrl: photoUrl,
              uid: uid,
              createdTime: createdTime,
              phoneNumber: phoneNumber,
              question1: question1,
              question2: question2,
              rating: rating,
              listenAudio: _listenAudio?.build(),
              status: status,
              minuteListen: minuteListen,
              sessionCount: sessionCount,
              isActiveChat: isActiveChat,
              isPsychologist: isPsychologist,
              psychologist: psychologist,
              clientsPsychologist: _clientsPsychologist?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listenAudio';
        _listenAudio?.build();

        _$failedField = 'clientsPsychologist';
        _clientsPsychologist?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
