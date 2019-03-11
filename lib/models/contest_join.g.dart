// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest_join.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContestJoin> _$contestJoinSerializer = new _$ContestJoinSerializer();

class _$ContestJoinSerializer implements StructuredSerializer<ContestJoin> {
  @override
  final Iterable<Type> types = const [ContestJoin, _$ContestJoin];
  @override
  final String wireName = 'ContestJoin';

  @override
  Iterable serialize(Serializers serializers, ContestJoin object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
      'studentId',
      serializers.serialize(object.studentId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ContestJoin deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContestJoinBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sessionId':
          result.sessionId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'studentId':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContestJoin extends ContestJoin {
  @override
  final String sessionId;
  @override
  final String studentId;

  factory _$ContestJoin([void updates(ContestJoinBuilder b)]) =>
      (new ContestJoinBuilder()..update(updates)).build();

  _$ContestJoin._({this.sessionId, this.studentId}) : super._() {
    if (sessionId == null) {
      throw new BuiltValueNullFieldError('ContestJoin', 'sessionId');
    }
    if (studentId == null) {
      throw new BuiltValueNullFieldError('ContestJoin', 'studentId');
    }
  }

  @override
  ContestJoin rebuild(void updates(ContestJoinBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContestJoinBuilder toBuilder() => new ContestJoinBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContestJoin &&
        sessionId == other.sessionId &&
        studentId == other.studentId;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sessionId.hashCode), studentId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContestJoin')
          ..add('sessionId', sessionId)
          ..add('studentId', studentId))
        .toString();
  }
}

class ContestJoinBuilder implements Builder<ContestJoin, ContestJoinBuilder> {
  _$ContestJoin _$v;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  String _studentId;
  String get studentId => _$this._studentId;
  set studentId(String studentId) => _$this._studentId = studentId;

  ContestJoinBuilder();

  ContestJoinBuilder get _$this {
    if (_$v != null) {
      _sessionId = _$v.sessionId;
      _studentId = _$v.studentId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContestJoin other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContestJoin;
  }

  @override
  void update(void updates(ContestJoinBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContestJoin build() {
    final _$result =
        _$v ?? new _$ContestJoin._(sessionId: sessionId, studentId: studentId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
