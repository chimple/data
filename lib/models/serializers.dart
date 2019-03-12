library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:data/models/class_interest.dart';
import 'package:data/models/class_join.dart';
import 'package:data/models/class_session.dart';
import 'package:data/models/class_students.dart';
import 'package:data/models/game_config.dart';
import 'package:data/models/game_data.dart';
import 'package:data/models/contest_start.dart';
import 'package:data/models/game_status.dart';
import 'package:data/models/multiple_choice_data.dart';
import 'package:data/models/contest_session.dart';
import 'package:data/models/contest_join.dart';
import 'package:data/models/score.dart';
import 'package:data/models/story_config.dart';
import 'package:data/models/student.dart';
import 'package:data/models/user_profile.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  ClassInterest,
  ClassJoin,
  ClassSession,
  ClassStudents,
  ContestJoin,
  ContestSession,
  ContestStart,
  GameConfig,
  GameData,
  GameStatus,
  MultipleChoiceData,
  Page,
  Score,
  StoryConfig,
  Stories,
  Student,
  UserProfile,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
