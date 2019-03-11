import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contest_start.g.dart';

abstract class ContestStart
    implements Built<ContestStart, ContestStartBuilder> {
  String get sessionId;

  ContestStart._();
  factory ContestStart([updates(ContestStartBuilder b)]) = _$ContestStart;
  static Serializer<ContestStart> get serializer => _$contestStartSerializer;
}
