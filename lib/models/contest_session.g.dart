// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contest_session.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContestSession> _$contestSessionSerializer =
    new _$ContestSessionSerializer();

class _$ContestSessionSerializer
    implements StructuredSerializer<ContestSession> {
  @override
  final Iterable<Type> types = const [ContestSession, _$ContestSession];
  @override
  final String wireName = 'ContestSession';

  @override
  Iterable serialize(Serializers serializers, ContestSession object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sessionId',
      serializers.serialize(object.sessionId,
          specifiedType: const FullType(String)),
      'gameId',
      serializers.serialize(object.gameId,
          specifiedType: const FullType(String)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
      'gameData',
      serializers.serialize(object.gameData,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GameData)])),
    ];

    return result;
  }

  @override
  ContestSession deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContestSessionBuilder();

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
        case 'gameId':
          result.gameId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'gameData':
          result.gameData.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(GameData)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ContestSession extends ContestSession {
  @override
  final String sessionId;
  @override
  final String gameId;
  @override
  final int level;
  @override
  final BuiltList<GameData> gameData;

  factory _$ContestSession([void updates(ContestSessionBuilder b)]) =>
      (new ContestSessionBuilder()..update(updates)).build();

  _$ContestSession._({this.sessionId, this.gameId, this.level, this.gameData})
      : super._() {
    if (sessionId == null) {
      throw new BuiltValueNullFieldError('ContestSession', 'sessionId');
    }
    if (gameId == null) {
      throw new BuiltValueNullFieldError('ContestSession', 'gameId');
    }
    if (level == null) {
      throw new BuiltValueNullFieldError('ContestSession', 'level');
    }
    if (gameData == null) {
      throw new BuiltValueNullFieldError('ContestSession', 'gameData');
    }
  }

  @override
  ContestSession rebuild(void updates(ContestSessionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ContestSessionBuilder toBuilder() =>
      new ContestSessionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContestSession &&
        sessionId == other.sessionId &&
        gameId == other.gameId &&
        level == other.level &&
        gameData == other.gameData;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, sessionId.hashCode), gameId.hashCode), level.hashCode),
        gameData.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContestSession')
          ..add('sessionId', sessionId)
          ..add('gameId', gameId)
          ..add('level', level)
          ..add('gameData', gameData))
        .toString();
  }
}

class ContestSessionBuilder
    implements Builder<ContestSession, ContestSessionBuilder> {
  _$ContestSession _$v;

  String _sessionId;
  String get sessionId => _$this._sessionId;
  set sessionId(String sessionId) => _$this._sessionId = sessionId;

  String _gameId;
  String get gameId => _$this._gameId;
  set gameId(String gameId) => _$this._gameId = gameId;

  int _level;
  int get level => _$this._level;
  set level(int level) => _$this._level = level;

  ListBuilder<GameData> _gameData;
  ListBuilder<GameData> get gameData =>
      _$this._gameData ??= new ListBuilder<GameData>();
  set gameData(ListBuilder<GameData> gameData) => _$this._gameData = gameData;

  ContestSessionBuilder();

  ContestSessionBuilder get _$this {
    if (_$v != null) {
      _sessionId = _$v.sessionId;
      _gameId = _$v.gameId;
      _level = _$v.level;
      _gameData = _$v.gameData?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContestSession other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContestSession;
  }

  @override
  void update(void updates(ContestSessionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ContestSession build() {
    _$ContestSession _$result;
    try {
      _$result = _$v ??
          new _$ContestSession._(
              sessionId: sessionId,
              gameId: gameId,
              level: level,
              gameData: gameData.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'gameData';
        gameData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ContestSession', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
