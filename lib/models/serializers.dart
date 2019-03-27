library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:data/models/chat_script.dart';
import 'package:data/models/class_interest.dart';
import 'package:data/models/class_join.dart';
import 'package:data/models/class_session.dart';
import 'package:data/models/class_students.dart';
import 'package:data/models/crossword_data.dart';
import 'package:data/models/game_config.dart';
import 'package:data/models/game_data.dart';
import 'package:data/models/quiz_update.dart';
import 'package:data/models/game_status.dart';
import 'package:data/models/math_op_data.dart';
import 'package:data/models/multi_data.dart';
import 'package:data/models/quiz_session.dart';
import 'package:data/models/quiz_join.dart';
import 'package:data/models/num_multi_data.dart';
import 'package:data/models/performance.dart';
import 'package:data/models/score.dart';
import 'package:data/models/story_config.dart';
import 'package:data/models/student.dart';
import 'package:data/models/user_profile.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ChatChoice,
  ChatQuestion,
  ChatScript,
  ClassInterest,
  ClassJoin,
  ClassSession,
  ClassStudents,
  QuizJoin,
  QuizSession,
  QuizUpdate,
  CrosswordData,
  GameConfig,
  GameData,
  GameStatus,
  MathOpData,
  MultiData,
  NumMultiData,
  Page,
  Performance,
  Score,
  StoryConfig,
  Stories,
  Student,
  UserProfile,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
