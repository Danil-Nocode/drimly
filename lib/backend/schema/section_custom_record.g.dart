// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_custom_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SectionCustomRecord> _$sectionCustomRecordSerializer =
    new _$SectionCustomRecordSerializer();

class _$SectionCustomRecordSerializer
    implements StructuredSerializer<SectionCustomRecord> {
  @override
  final Iterable<Type> types = const [
    SectionCustomRecord,
    _$SectionCustomRecord
  ];
  @override
  final String wireName = 'SectionCustomRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SectionCustomRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.audios;
    if (value != null) {
      result
        ..add('audios')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.videos;
    if (value != null) {
      result
        ..add('videos')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.files;
    if (value != null) {
      result
        ..add('files')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.task;
    if (value != null) {
      result
        ..add('task')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  SectionCustomRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionCustomRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'audios':
          result.audios.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'videos':
          result.videos.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'task':
          result.task = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$SectionCustomRecord extends SectionCustomRecord {
  @override
  final String? title;
  @override
  final String? duration;
  @override
  final BuiltList<DocumentReference<Object?>>? audios;
  @override
  final BuiltList<String>? videos;
  @override
  final BuiltList<String>? files;
  @override
  final bool? task;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SectionCustomRecord(
          [void Function(SectionCustomRecordBuilder)? updates]) =>
      (new SectionCustomRecordBuilder()..update(updates))._build();

  _$SectionCustomRecord._(
      {this.title,
      this.duration,
      this.audios,
      this.videos,
      this.files,
      this.task,
      this.ffRef})
      : super._();

  @override
  SectionCustomRecord rebuild(
          void Function(SectionCustomRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionCustomRecordBuilder toBuilder() =>
      new SectionCustomRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionCustomRecord &&
        title == other.title &&
        duration == other.duration &&
        audios == other.audios &&
        videos == other.videos &&
        files == other.files &&
        task == other.task &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), duration.hashCode),
                        audios.hashCode),
                    videos.hashCode),
                files.hashCode),
            task.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SectionCustomRecord')
          ..add('title', title)
          ..add('duration', duration)
          ..add('audios', audios)
          ..add('videos', videos)
          ..add('files', files)
          ..add('task', task)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SectionCustomRecordBuilder
    implements Builder<SectionCustomRecord, SectionCustomRecordBuilder> {
  _$SectionCustomRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  ListBuilder<DocumentReference<Object?>>? _audios;
  ListBuilder<DocumentReference<Object?>> get audios =>
      _$this._audios ??= new ListBuilder<DocumentReference<Object?>>();
  set audios(ListBuilder<DocumentReference<Object?>>? audios) =>
      _$this._audios = audios;

  ListBuilder<String>? _videos;
  ListBuilder<String> get videos =>
      _$this._videos ??= new ListBuilder<String>();
  set videos(ListBuilder<String>? videos) => _$this._videos = videos;

  ListBuilder<String>? _files;
  ListBuilder<String> get files => _$this._files ??= new ListBuilder<String>();
  set files(ListBuilder<String>? files) => _$this._files = files;

  bool? _task;
  bool? get task => _$this._task;
  set task(bool? task) => _$this._task = task;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SectionCustomRecordBuilder() {
    SectionCustomRecord._initializeBuilder(this);
  }

  SectionCustomRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _duration = $v.duration;
      _audios = $v.audios?.toBuilder();
      _videos = $v.videos?.toBuilder();
      _files = $v.files?.toBuilder();
      _task = $v.task;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionCustomRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SectionCustomRecord;
  }

  @override
  void update(void Function(SectionCustomRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SectionCustomRecord build() => _build();

  _$SectionCustomRecord _build() {
    _$SectionCustomRecord _$result;
    try {
      _$result = _$v ??
          new _$SectionCustomRecord._(
              title: title,
              duration: duration,
              audios: _audios?.build(),
              videos: _videos?.build(),
              files: _files?.build(),
              task: task,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audios';
        _audios?.build();
        _$failedField = 'videos';
        _videos?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SectionCustomRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
