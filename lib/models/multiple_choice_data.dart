import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:data/models/game_data.dart';

part 'multiple_choice_data.g.dart';

abstract class MultipleChoiceData
    implements Built<MultipleChoiceData, MultipleChoiceDataBuilder>, GameData {
  String get answer;
  BuiltList<String> get choices;

  MultipleChoiceData._();
  factory MultipleChoiceData([updates(MultipleChoiceDataBuilder b)]) =
      _$MultipleChoiceData;
  static Serializer<MultipleChoiceData> get serializer =>
      _$multipleChoiceDataSerializer;
}
