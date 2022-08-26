// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sounds_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SoundsRecord> _$soundsRecordSerializer =
    new _$SoundsRecordSerializer();

class _$SoundsRecordSerializer implements StructuredSerializer<SoundsRecord> {
  @override
  final Iterable<Type> types = const [SoundsRecord, _$SoundsRecord];
  @override
  final String wireName = 'SoundsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SoundsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.coverMini;
    if (value != null) {
      result
        ..add('coverMini')
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
  SoundsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SoundsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
        case 'coverMini':
          result.coverMini = serializers.deserialize(value,
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

class _$SoundsRecord extends SoundsRecord {
  @override
  final DocumentReference<Object?>? audio;
  @override
  final int? index;
  @override
  final String? coverMini;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SoundsRecord([void Function(SoundsRecordBuilder)? updates]) =>
      (new SoundsRecordBuilder()..update(updates))._build();

  _$SoundsRecord._({this.audio, this.index, this.coverMini, this.ffRef})
      : super._();

  @override
  SoundsRecord rebuild(void Function(SoundsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoundsRecordBuilder toBuilder() => new SoundsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoundsRecord &&
        audio == other.audio &&
        index == other.index &&
        coverMini == other.coverMini &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, audio.hashCode), index.hashCode), coverMini.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SoundsRecord')
          ..add('audio', audio)
          ..add('index', index)
          ..add('coverMini', coverMini)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SoundsRecordBuilder
    implements Builder<SoundsRecord, SoundsRecordBuilder> {
  _$SoundsRecord? _$v;

  DocumentReference<Object?>? _audio;
  DocumentReference<Object?>? get audio => _$this._audio;
  set audio(DocumentReference<Object?>? audio) => _$this._audio = audio;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  String? _coverMini;
  String? get coverMini => _$this._coverMini;
  set coverMini(String? coverMini) => _$this._coverMini = coverMini;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SoundsRecordBuilder() {
    SoundsRecord._initializeBuilder(this);
  }

  SoundsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _audio = $v.audio;
      _index = $v.index;
      _coverMini = $v.coverMini;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SoundsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoundsRecord;
  }

  @override
  void update(void Function(SoundsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoundsRecord build() => _build();

  _$SoundsRecord _build() {
    final _$result = _$v ??
        new _$SoundsRecord._(
            audio: audio, index: index, coverMini: coverMini, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
