// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AudiosRecord> _$audiosRecordSerializer =
    new _$AudiosRecordSerializer();

class _$AudiosRecordSerializer implements StructuredSerializer<AudiosRecord> {
  @override
  final Iterable<Type> types = const [AudiosRecord, _$AudiosRecord];
  @override
  final String wireName = 'AudiosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AudiosRecord object,
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
    value = object.audio;
    if (value != null) {
      result
        ..add('audio')
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
  AudiosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AudiosRecordBuilder();

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
        case 'audio':
          result.audio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cover':
          result.cover = serializers.deserialize(value,
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

class _$AudiosRecord extends AudiosRecord {
  @override
  final String? title;
  @override
  final String? audio;
  @override
  final String? cover;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AudiosRecord([void Function(AudiosRecordBuilder)? updates]) =>
      (new AudiosRecordBuilder()..update(updates))._build();

  _$AudiosRecord._({this.title, this.audio, this.cover, this.ffRef})
      : super._();

  @override
  AudiosRecord rebuild(void Function(AudiosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AudiosRecordBuilder toBuilder() => new AudiosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AudiosRecord &&
        title == other.title &&
        audio == other.audio &&
        cover == other.cover &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), audio.hashCode), cover.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AudiosRecord')
          ..add('title', title)
          ..add('audio', audio)
          ..add('cover', cover)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AudiosRecordBuilder
    implements Builder<AudiosRecord, AudiosRecordBuilder> {
  _$AudiosRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _audio;
  String? get audio => _$this._audio;
  set audio(String? audio) => _$this._audio = audio;

  String? _cover;
  String? get cover => _$this._cover;
  set cover(String? cover) => _$this._cover = cover;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AudiosRecordBuilder() {
    AudiosRecord._initializeBuilder(this);
  }

  AudiosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _audio = $v.audio;
      _cover = $v.cover;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AudiosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AudiosRecord;
  }

  @override
  void update(void Function(AudiosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AudiosRecord build() => _build();

  _$AudiosRecord _build() {
    final _$result = _$v ??
        new _$AudiosRecord._(
            title: title, audio: audio, cover: cover, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
