// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditations_n_y_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeditationsNYRecord> _$meditationsNYRecordSerializer =
    new _$MeditationsNYRecordSerializer();

class _$MeditationsNYRecordSerializer
    implements StructuredSerializer<MeditationsNYRecord> {
  @override
  final Iterable<Type> types = const [
    MeditationsNYRecord,
    _$MeditationsNYRecord
  ];
  @override
  final String wireName = 'MeditationsNYRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MeditationsNYRecord object,
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
    value = object.cover;
    if (value != null) {
      result
        ..add('cover')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.coverMini;
    if (value != null) {
      result
        ..add('coverMini')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isView;
    if (value != null) {
      result
        ..add('isView')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.section;
    if (value != null) {
      result
        ..add('section')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.countLesson;
    if (value != null) {
      result
        ..add('countLesson')
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
  MeditationsNYRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeditationsNYRecordBuilder();

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
        case 'cover':
          result.cover = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'coverMini':
          result.coverMini = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'isView':
          result.isView = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'section':
          result.section = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'countLesson':
          result.countLesson = serializers.deserialize(value,
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

class _$MeditationsNYRecord extends MeditationsNYRecord {
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final String? coverMini;
  @override
  final bool? isView;
  @override
  final DocumentReference<Object?>? section;
  @override
  final String? countLesson;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MeditationsNYRecord(
          [void Function(MeditationsNYRecordBuilder)? updates]) =>
      (new MeditationsNYRecordBuilder()..update(updates))._build();

  _$MeditationsNYRecord._(
      {this.title,
      this.cover,
      this.coverMini,
      this.isView,
      this.section,
      this.countLesson,
      this.ffRef})
      : super._();

  @override
  MeditationsNYRecord rebuild(
          void Function(MeditationsNYRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeditationsNYRecordBuilder toBuilder() =>
      new MeditationsNYRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeditationsNYRecord &&
        title == other.title &&
        cover == other.cover &&
        coverMini == other.coverMini &&
        isView == other.isView &&
        section == other.section &&
        countLesson == other.countLesson &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), cover.hashCode),
                        coverMini.hashCode),
                    isView.hashCode),
                section.hashCode),
            countLesson.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeditationsNYRecord')
          ..add('title', title)
          ..add('cover', cover)
          ..add('coverMini', coverMini)
          ..add('isView', isView)
          ..add('section', section)
          ..add('countLesson', countLesson)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MeditationsNYRecordBuilder
    implements Builder<MeditationsNYRecord, MeditationsNYRecordBuilder> {
  _$MeditationsNYRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  String? _coverMini;
  String? get coverMini => _$this._coverMini;
  set coverMini(String? coverMini) => _$this._coverMini = coverMini;

  bool? _isView;
  bool? get isView => _$this._isView;
  set isView(bool? isView) => _$this._isView = isView;

  DocumentReference<Object?>? _section;
  DocumentReference<Object?>? get section => _$this._section;
  set section(DocumentReference<Object?>? section) => _$this._section = section;

  String? _countLesson;
  String? get countLesson => _$this._countLesson;
  set countLesson(String? countLesson) => _$this._countLesson = countLesson;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MeditationsNYRecordBuilder() {
    MeditationsNYRecord._initializeBuilder(this);
  }

  MeditationsNYRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _cover = $v.cover;
      _coverMini = $v.coverMini;
      _isView = $v.isView;
      _section = $v.section;
      _countLesson = $v.countLesson;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeditationsNYRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeditationsNYRecord;
  }

  @override
  void update(void Function(MeditationsNYRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeditationsNYRecord build() => _build();

  _$MeditationsNYRecord _build() {
    final _$result = _$v ??
        new _$MeditationsNYRecord._(
            title: title,
            cover: cover,
            coverMini: coverMini,
            isView: isView,
            section: section,
            countLesson: countLesson,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
