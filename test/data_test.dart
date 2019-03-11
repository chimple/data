import 'package:data/models/multiple_choice_data.dart';
import 'package:data/models/contest_session.dart';
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
      print(json);
      ContestSession s = standardSerializers.deserialize(json);
      expect(session, s);
    });
  });
}
