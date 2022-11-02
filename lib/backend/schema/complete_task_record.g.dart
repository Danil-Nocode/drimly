// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_task_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CompleteTaskRecord> _$completeTaskRecordSerializer =
    new _$CompleteTaskRecordSerializer();

class _$CompleteTaskRecordSerializer
    implements StructuredSerializer<CompleteTaskRecord> {
  @override
  final Iterable<Type> types = const [CompleteTaskRecord, _$CompleteTaskRecord];
  @override
  final String wireName = 'CompleteTaskRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CompleteTaskRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.task;
    if (value != null) {
      result
        ..add('task')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.feedback;
    if (value != null) {
      result
        ..add('feedback')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.datetime;
    if (value != null) {
      result
        ..add('datetime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.whoChecked;
    if (value != null) {
      result
        ..add('whoChecked')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.imagesAnswer;
    if (value != null) {
      result
        ..add('imagesAnswer')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.textAnswer;
    if (value != null) {
      result
        ..add('textAnswer')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  CompleteTaskRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompleteTaskRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'feedback':
          result.feedback = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'datetime':
          result.datetime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'whoChecked':
          result.whoChecked = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'imagesAnswer':
          result.imagesAnswer.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'textAnswer':
          result.textAnswer = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$CompleteTaskRecord extends CompleteTaskRecord {
  @override
  final DocumentReference<Object?>? task;
  @override
  final DocumentReference<Object?>? user;
  @override
  final String? status;
  @override
  final String? feedback;
  @override
  final double? rate;
  @override
  final DateTime? datetime;
  @override
  final DocumentReference<Object?>? whoChecked;
  @override
  final BuiltList<String>? imagesAnswer;
  @override
  final String? textAnswer;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CompleteTaskRecord(
          [void Function(CompleteTaskRecordBuilder)? updates]) =>
      (new CompleteTaskRecordBuilder()..update(updates))._build();

  _$CompleteTaskRecord._(
      {this.task,
      this.user,
      this.status,
      this.feedback,
      this.rate,
      this.datetime,
      this.whoChecked,
      this.imagesAnswer,
      this.textAnswer,
      this.ffRef})
      : super._();

  @override
  CompleteTaskRecord rebuild(
          void Function(CompleteTaskRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompleteTaskRecordBuilder toBuilder() =>
      new CompleteTaskRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompleteTaskRecord &&
        task == other.task &&
        user == other.user &&
        status == other.status &&
        feedback == other.feedback &&
        rate == other.rate &&
        datetime == other.datetime &&
        whoChecked == other.whoChecked &&
        imagesAnswer == other.imagesAnswer &&
        textAnswer == other.textAnswer &&
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
                                $jc($jc($jc(0, task.hashCode), user.hashCode),
                                    status.hashCode),
                                feedback.hashCode),
                            rate.hashCode),
                        datetime.hashCode),
                    whoChecked.hashCode),
                imagesAnswer.hashCode),
            textAnswer.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CompleteTaskRecord')
          ..add('task', task)
          ..add('user', user)
          ..add('status', status)
          ..add('feedback', feedback)
          ..add('rate', rate)
          ..add('datetime', datetime)
          ..add('whoChecked', whoChecked)
          ..add('imagesAnswer', imagesAnswer)
          ..add('textAnswer', textAnswer)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CompleteTaskRecordBuilder
    implements Builder<CompleteTaskRecord, CompleteTaskRecordBuilder> {
  _$CompleteTaskRecord? _$v;

  DocumentReference<Object?>? _task;
  DocumentReference<Object?>? get task => _$this._task;
  set task(DocumentReference<Object?>? task) => _$this._task = task;

  DocumentReference<Object?>? _user;
  DocumentReference<Object?>? get user => _$this._user;
  set user(DocumentReference<Object?>? user) => _$this._user = user;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _feedback;
  String? get feedback => _$this._feedback;
  set feedback(String? feedback) => _$this._feedback = feedback;

  double? _rate;
  double? get rate => _$this._rate;
  set rate(double? rate) => _$this._rate = rate;

  DateTime? _datetime;
  DateTime? get datetime => _$this._datetime;
  set datetime(DateTime? datetime) => _$this._datetime = datetime;

  DocumentReference<Object?>? _whoChecked;
  DocumentReference<Object?>? get whoChecked => _$this._whoChecked;
  set whoChecked(DocumentReference<Object?>? whoChecked) =>
      _$this._whoChecked = whoChecked;

  ListBuilder<String>? _imagesAnswer;
  ListBuilder<String> get imagesAnswer =>
      _$this._imagesAnswer ??= new ListBuilder<String>();
  set imagesAnswer(ListBuilder<String>? imagesAnswer) =>
      _$this._imagesAnswer = imagesAnswer;

  String? _textAnswer;
  String? get textAnswer => _$this._textAnswer;
  set textAnswer(String? textAnswer) => _$this._textAnswer = textAnswer;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CompleteTaskRecordBuilder() {
    CompleteTaskRecord._initializeBuilder(this);
  }

  CompleteTaskRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _task = $v.task;
      _user = $v.user;
      _status = $v.status;
      _feedback = $v.feedback;
      _rate = $v.rate;
      _datetime = $v.datetime;
      _whoChecked = $v.whoChecked;
      _imagesAnswer = $v.imagesAnswer?.toBuilder();
      _textAnswer = $v.textAnswer;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompleteTaskRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompleteTaskRecord;
  }

  @override
  void update(void Function(CompleteTaskRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CompleteTaskRecord build() => _build();

  _$CompleteTaskRecord _build() {
    _$CompleteTaskRecord _$result;
    try {
      _$result = _$v ??
          new _$CompleteTaskRecord._(
              task: task,
              user: user,
              status: status,
              feedback: feedback,
              rate: rate,
              datetime: datetime,
              whoChecked: whoChecked,
              imagesAnswer: _imagesAnswer?.build(),
              textAnswer: textAnswer,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'imagesAnswer';
        _imagesAnswer?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CompleteTaskRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
