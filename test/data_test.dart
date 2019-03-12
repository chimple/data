import 'dart:convert';

import 'package:data/models/multiple_choice_data.dart';
import 'package:data/models/contest_session.dart';
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
    test('serialize and deserialize session', () {
      final standardSerializers =
          (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

      ContestSession session = ContestSession((b) => b
        ..sessionId = '1'
        ..gameId = '2'
        ..level = 3
        ..gameData.add(MultipleChoiceData((c) => c
          ..choices.addAll(['a', 'b', 'c'])
          ..answer = 'd')));
      final json = standardSerializers.serialize(session);
      final jsonString = jsonEncode(json);
      print(jsonString);
      final newJson = jsonDecode(jsonString);
      ContestSession s = standardSerializers.deserialize(newJson);
      expect(session, s);
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
  });
}
