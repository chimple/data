// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest_start.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContestStart> _$contestStartSerializer =
    new _$ContestStartSerializer();

class _$ContestStartSerializer implements StructuredSerializer<ContestStart> {
  @override
  final Iterable<Type> types = const [ContestStart, _$ContestStart];
  @override
  final String wireName = 'ContestStart';

  @override
  Iterable serialize(Serializers serializers, ContestStart object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ContestStart deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContestStartBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ContestStart extends ContestStart {
  @override
  final String sessionId;

  factory _$ContestStart([void updates(ContestStartBuilder b)]) =>
      (new ContestStartBuilder()..update(updates)).build();

  _$ContestStart._({this.sessionId}) : super._() {
    if (sessionId == null) {
      throw new BuiltValueNullFieldError('ContestStart', 'sessionId');
    }
  }

  @override
  ContestStart rebuild(void updates(ContestStartBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContestStartBuilder toBuilder() => new ContestStartBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContestStart && sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, sessionId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContestStart')
          ..add('sessionId', sessionId))
        .toString();
  }
}

class ContestStartBuilder
    implements Builder<ContestStart, ContestStartBuilder> {
  _$ContestStart _$v;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  ContestStartBuilder();

  ContestStartBuilder get _$this {
    if (_$v != null) {
      _sessionId = _$v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContestStart other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContestStart;
  }

  @override
  void update(void updates(ContestStartBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContestStart build() {
    final _$result = _$v ?? new _$ContestStart._(sessionId: sessionId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
