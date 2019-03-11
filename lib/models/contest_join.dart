import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contest_join.g.dart';

abstract class ContestJoin implements Built<ContestJoin, ContestJoinBuilder> {
  String get sessionId;
  String get studentId;

  ContestJoin._();
  factory ContestJoin([updates(ContestJoinBuilder b)]) = _$ContestJoin;
  static Serializer<ContestJoin> get serializer => _$contestJoinSerializer;
}
