import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:data/models/game_data.dart';

part 'quiz_session.g.dart';

abstract class QuizSession implements Built<QuizSession, QuizSessionBuilder> {
  String get sessionId;
  String get gameId;
  int get level;
  BuiltList<GameData> get gameData;

  QuizSession._();
  factory QuizSession([updates(QuizSessionBuilder b)]) = _$QuizSession;
  static Serializer<QuizSession> get serializer => _$quizSessionSerializer;
}
