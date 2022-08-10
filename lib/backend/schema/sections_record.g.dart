// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sections_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SectionsRecord> _$sectionsRecordSerializer =
    new _$SectionsRecordSerializer();

class _$SectionsRecordSerializer
    implements StructuredSerializer<SectionsRecord> {
  @override
  final Iterable<Type> types = const [SectionsRecord, _$SectionsRecord];
  @override
  final String wireName = 'SectionsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SectionsRecord object,
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
  SectionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SectionsRecordBuilder();

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

class _$SectionsRecord extends SectionsRecord {
  @override
  final String? title;
  @override
  final String? duration;
  @override
  final BuiltList<DocumentReference<Object?>>? audios;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SectionsRecord([void Function(SectionsRecordBuilder)? updates]) =>
      (new SectionsRecordBuilder()..update(updates))._build();

  _$SectionsRecord._({this.title, this.duration, this.audios, this.ffRef})
      : super._();

  @override
  SectionsRecord rebuild(void Function(SectionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SectionsRecordBuilder toBuilder() =>
      new SectionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SectionsRecord &&
        title == other.title &&
        duration == other.duration &&
        audios == other.audios &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), duration.hashCode), audios.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SectionsRecord')
          ..add('title', title)
          ..add('duration', duration)
          ..add('audios', audios)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SectionsRecordBuilder
    implements Builder<SectionsRecord, SectionsRecordBuilder> {
  _$SectionsRecord? _$v;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SectionsRecordBuilder() {
    SectionsRecord._initializeBuilder(this);
  }

  SectionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _duration = $v.duration;
      _audios = $v.audios?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SectionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SectionsRecord;
  }

  @override
  void update(void Function(SectionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SectionsRecord build() => _build();

  _$SectionsRecord _build() {
    _$SectionsRecord _$result;
    try {
      _$result = _$v ??
          new _$SectionsRecord._(
              title: title,
              duration: duration,
              audios: _audios?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audios';
        _audios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SectionsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
