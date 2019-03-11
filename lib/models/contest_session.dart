import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:data/models/game_data.dart';

part 'contest_session.g.dart';

abstract class ContestSession
    implements Built<ContestSession, ContestSessionBuilder> {
  String get sessionId;
  String get gameId;
  int get level;
  BuiltList<GameData> get gameData;

  ContestSession._();
  factory ContestSession([updates(ContestSessionBuilder b)]) = _$ContestSession;
  static Serializer<ContestSession> get serializer =>
      _$contestSessionSerializer;
}
