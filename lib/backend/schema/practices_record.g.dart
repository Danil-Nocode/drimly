// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'practices_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PracticesRecord> _$practicesRecordSerializer =
    new _$PracticesRecordSerializer();

class _$PracticesRecordSerializer
    implements StructuredSerializer<PracticesRecord> {
  @override
  final Iterable<Type> types = const [PracticesRecord, _$PracticesRecord];
  @override
  final String wireName = 'PracticesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PracticesRecord object,
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
    value = object.desctiption;
    if (value != null) {
      result
        ..add('desctiption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
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
    value = object.sections;
    if (value != null) {
      result
        ..add('sections')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.coverBig;
    if (value != null) {
      result
        ..add('coverBig')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.countLesson;
    if (value != null) {
      result
        ..add('countLesson')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PracticesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PracticesRecordBuilder();

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
        case 'desctiption':
          result.desctiption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sections':
          result.sections.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'coverBig':
          result.coverBig = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'countLesson':
          result.countLesson = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PracticesRecord extends PracticesRecord {
  @override
  final String? title;
  @override
  final String? desctiption;
  @override
  final String? cover;
  @override
  final String? duration;
  @override
  final BuiltList<DocumentReference<Object?>>? sections;
  @override
  final String? coverBig;
  @override
  final DocumentReference<Object?>? section;
  @override
  final DocumentReference<Object?>? audio;
  @override
  final int? index;
  @override
  final int? countLesson;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PracticesRecord([void Function(PracticesRecordBuilder)? updates]) =>
      (new PracticesRecordBuilder()..update(updates))._build();

  _$PracticesRecord._(
      {this.title,
      this.desctiption,
      this.cover,
      this.duration,
      this.sections,
      this.coverBig,
      this.section,
      this.audio,
      this.index,
      this.countLesson,
      this.ffRef})
      : super._();

  @override
  PracticesRecord rebuild(void Function(PracticesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PracticesRecordBuilder toBuilder() =>
      new PracticesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PracticesRecord &&
        title == other.title &&
        desctiption == other.desctiption &&
        cover == other.cover &&
        duration == other.duration &&
        sections == other.sections &&
        coverBig == other.coverBig &&
        section == other.section &&
        audio == other.audio &&
        index == other.index &&
        countLesson == other.countLesson &&
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
                                        $jc($jc(0, title.hashCode),
                                            desctiption.hashCode),
                                        cover.hashCode),
                                    duration.hashCode),
                                sections.hashCode),
                            coverBig.hashCode),
                        section.hashCode),
                    audio.hashCode),
                index.hashCode),
            countLesson.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PracticesRecord')
          ..add('title', title)
          ..add('desctiption', desctiption)
          ..add('cover', cover)
          ..add('duration', duration)
          ..add('sections', sections)
          ..add('coverBig', coverBig)
          ..add('section', section)
          ..add('audio', audio)
          ..add('index', index)
          ..add('countLesson', countLesson)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PracticesRecordBuilder
    implements Builder<PracticesRecord, PracticesRecordBuilder> {
  _$PracticesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _desctiption;
  String? get desctiption => _$this._desctiption;
  set desctiption(String? desctiption) => _$this._desctiption = desctiption;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  ListBuilder<DocumentReference<Object?>>? _sections;
  ListBuilder<DocumentReference<Object?>> get sections =>
      _$this._sections ??= new ListBuilder<DocumentReference<Object?>>();
  set sections(ListBuilder<DocumentReference<Object?>>? sections) =>
      _$this._sections = sections;

  String? _coverBig;
  String? get coverBig => _$this._coverBig;
  set coverBig(String? coverBig) => _$this._coverBig = coverBig;

  DocumentReference<Object?>? _section;
  DocumentReference<Object?>? get section => _$this._section;
  set section(DocumentReference<Object?>? section) => _$this._section = section;

  DocumentReference<Object?>? _audio;
  DocumentReference<Object?>? get audio => _$this._audio;
  set audio(DocumentReference<Object?>? audio) => _$this._audio = audio;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  int? _countLesson;
  int? get countLesson => _$this._countLesson;
  set countLesson(int? countLesson) => _$this._countLesson = countLesson;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PracticesRecordBuilder() {
    PracticesRecord._initializeBuilder(this);
  }

  PracticesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _desctiption = $v.desctiption;
      _cover = $v.cover;
      _duration = $v.duration;
      _sections = $v.sections?.toBuilder();
      _coverBig = $v.coverBig;
      _section = $v.section;
      _audio = $v.audio;
      _index = $v.index;
      _countLesson = $v.countLesson;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PracticesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PracticesRecord;
  }

  @override
  void update(void Function(PracticesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PracticesRecord build() => _build();

  _$PracticesRecord _build() {
    _$PracticesRecord _$result;
    try {
      _$result = _$v ??
          new _$PracticesRecord._(
              title: title,
              desctiption: desctiption,
              cover: cover,
              duration: duration,
              sections: _sections?.build(),
              coverBig: coverBig,
              section: section,
              audio: audio,
              index: index,
              countLesson: countLesson,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'sections';
        _sections?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PracticesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
