// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeditationRecord> _$meditationRecordSerializer =
    new _$MeditationRecordSerializer();

class _$MeditationRecordSerializer
    implements StructuredSerializer<MeditationRecord> {
  @override
  final Iterable<Type> types = const [MeditationRecord, _$MeditationRecord];
  @override
  final String wireName = 'MeditationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeditationRecord object,
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
  MeditationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeditationRecordBuilder();

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

class _$MeditationRecord extends MeditationRecord {
  @override
  final String? title;
  @override
  final String? cover;
  @override
  final BuiltList<DocumentReference<Object?>>? audios;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MeditationRecord(
          [void Function(MeditationRecordBuilder)? updates]) =>
      (new MeditationRecordBuilder()..update(updates))._build();

  _$MeditationRecord._({this.title, this.cover, this.audios, this.ffRef})
      : super._();

  @override
  MeditationRecord rebuild(void Function(MeditationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeditationRecordBuilder toBuilder() =>
      new MeditationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeditationRecord &&
        title == other.title &&
        cover == other.cover &&
        audios == other.audios &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), cover.hashCode), audios.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeditationRecord')
          ..add('title', title)
          ..add('cover', cover)
          ..add('audios', audios)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MeditationRecordBuilder
    implements Builder<MeditationRecord, MeditationRecordBuilder> {
  _$MeditationRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  ListBuilder<DocumentReference<Object?>>? _audios;
  ListBuilder<DocumentReference<Object?>> get audios =>
      _$this._audios ??= new ListBuilder<DocumentReference<Object?>>();
  set audios(ListBuilder<DocumentReference<Object?>>? audios) =>
      _$this._audios = audios;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MeditationRecordBuilder() {
    MeditationRecord._initializeBuilder(this);
  }

  MeditationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _cover = $v.cover;
      _audios = $v.audios?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeditationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeditationRecord;
  }

  @override
  void update(void Function(MeditationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeditationRecord build() => _build();

  _$MeditationRecord _build() {
    _$MeditationRecord _$result;
    try {
      _$result = _$v ??
          new _$MeditationRecord._(
              title: title,
              cover: cover,
              audios: _audios?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'audios';
        _audios?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MeditationRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
