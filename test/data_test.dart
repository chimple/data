import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:data/models/multi_data.dart';
import 'package:data/models/quiz_session.dart';
import 'package:data/models/num_multi_data.dart';
import 'package:data/models/story_config.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:data/data.dart';

void main() {
  group('Collections', () {
    test('serialize and deserialize student', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      Student student = Student((b) => b
        ..name = 'Ram'
        ..id = '123'
        ..photo = 'base64string'
        ..grade = '1');
      final json = standardSerializers.serialize(student);
      Student s = standardSerializers.deserialize(json);
      expect(student, s);
    });
    test('serialize and deserialize ContestSession', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      QuizSession session = QuizSession((b) => b
        ..sessionId = '1'
        ..gameId = '2'
        ..level = 3
        ..gameData.add(MultiData((c) => c
          ..gameId = '2'
          ..choices.addAll(['a', 'b', 'c'])
          ..answers.addAll(['d']))));
      final json = standardSerializers.serialize(session);
      final jsonString = jsonEncode(json);
      print(jsonString);
      final newJson = jsonDecode(jsonString);
      QuizSession s = standardSerializers.deserialize(newJson);
      expect(session, s);
    });
    test('serialize and deserialize NumMultiData', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      NumMultiData data = NumMultiData((b) => b
        ..gameId = '2'
        ..choices.addAll([1, 2, 3])
        ..answers.addAll([4]));
      final json = standardSerializers.serialize(data);
      final jsonString = jsonEncode(json);
      print(jsonString);
      final newJson = jsonDecode(jsonString);
      NumMultiData s = standardSerializers.deserialize(newJson);
      expect(data, s);
    });
    test('serialize and deserialize stories', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      Stories stories = Stories((b) => b
        ..stories.addAll([
          StoryConfig((c) => c
            ..storyId = '001'
            ..title = 'Ahilyabai Holkar'
            ..coverImagePath = '001cover.jpg'
            ..pages.addAll([
              Page((p) => p
                ..pageNumber = '1'
                ..imagePath = '001page1.jpg'
                ..audioPath = '001page1audio'
                ..text = 'Look at these'),
              Page((p) => p
                ..pageNumber = '2'
                ..imagePath = '001page1.jpg'
                ..audioPath = '001page1audio'
                ..text = 'Look at these'),
            ])),
          StoryConfig((c) => c
            ..storyId = '002'
            ..title = 'Ahilyabai Holkar'
            ..coverImagePath = '001cover.jpg'
            ..pages.addAll([
              Page((p) => p
                ..pageNumber = '1'
                ..imagePath = '001page1.jpg'
                ..audioPath = '001page1audio'
                ..text = 'Look at these'),
              Page((p) => p
                ..pageNumber = '2'
                ..imagePath = '001page1.jpg'
                ..audioPath = '001page1audio'
                ..text = 'Look at these'),
            ])),
        ]));
      final json = standardSerializers.serialize(stories);
      final jsonString = jsonEncode(json);
      print(jsonString);
      final newJson = jsonDecode(jsonString);
      Stories s = standardSerializers.deserialize(newJson);
      expect(stories, s);
    });
    test('serialize and deserialize ChatQuestion', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      ChatScript data = ChatScript((b) => b
        ..choices.addAll({
          'idli': ChatChoice((c) => c
            ..choice = 'idli'
            ..reply = 'Tasty'
            ..questions.addAll(['b', 'c'])),
          'dosa': ChatChoice((c) => c..choice = 'dosa'),
          'nothing': ChatChoice((c) => c
            ..choice = 'nothing'
            ..reply = 'So sad!'
            ..questions.addAll(['d'])),
          'chutney': ChatChoice((c) => c
            ..choice = 'chutney'
            ..reply = 'Spicy!'),
          'sambar': ChatChoice((c) => c..choice = 'sambar'),
          'sugar': ChatChoice((c) => c
            ..choice = 'sugar'
            ..reply = 'Sweet!'),
          'fluffy': ChatChoice((c) => c
            ..choice = 'fluffy'
            ..reply = 'Too good'),
          'hard': ChatChoice((c) => c
            ..choice = 'hard'
            ..reply = 'So sad!'),
        })
        ..questions.addAll({
          'a': ChatQuestion((q) => q
            ..question = 'What did you eat?'
            ..emotion = 'hungry'
            ..choices.addAll(['idli', 'dosa', 'nothing'])),
          'b': ChatQuestion((q) => q
            ..question = 'What did you like with idli?'
            ..emotion = 'yummy'
            ..choices.addAll(['chutney', 'sambar', 'sugar'])),
          'c': ChatQuestion((q) => q
            ..question = 'How was the idli?'
            ..emotion = 'curious'
            ..choices.addAll(['fluffy', 'hard'])),
          'd': ChatQuestion((q) => q
            ..question = 'What do you want to eat?'
            ..emotion = 'hungry'
            ..choices.addAll(['idli', 'dosa', 'nothing']))
        }));
      final json = standardSerializers.serialize(data);
      final jsonString = jsonEncode(json);
      print(jsonString);
      final newJson = jsonDecode(jsonString);
      ChatScript s = standardSerializers.deserialize(newJson);
      expect(data, s);
    });
  });
}
