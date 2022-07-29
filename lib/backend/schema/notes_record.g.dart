// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NotesRecord> _$notesRecordSerializer = new _$NotesRecordSerializer();

class _$NotesRecordSerializer implements StructuredSerializer<NotesRecord> {
  @override
  final Iterable<Type> types = const [NotesRecord, _$NotesRecord];
  @override
  final String wireName = 'NotesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NotesRecord object,
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
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
  NotesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NotesRecordBuilder();

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
        case 'description':
          result.description = serializers.deserialize(value,
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

class _$NotesRecord extends NotesRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NotesRecord([void Function(NotesRecordBuilder)? updates]) =>
      (new NotesRecordBuilder()..update(updates))._build();

  _$NotesRecord._({this.title, this.description, this.ffRef}) : super._();

  @override
  NotesRecord rebuild(void Function(NotesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesRecordBuilder toBuilder() => new NotesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NotesRecord &&
        title == other.title &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), description.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NotesRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NotesRecordBuilder implements Builder<NotesRecord, NotesRecordBuilder> {
  _$NotesRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NotesRecordBuilder() {
    NotesRecord._initializeBuilder(this);
  }

  NotesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NotesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NotesRecord;
  }

  @override
  void update(void Function(NotesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NotesRecord build() => _build();

  _$NotesRecord _build() {
    final _$result = _$v ??
        new _$NotesRecord._(
            title: title, description: description, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
