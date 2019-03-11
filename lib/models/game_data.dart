import 'package:built_value/built_value.dart';

part 'game_data.g.dart';

@BuiltValue(instantiable: false)
abstract class GameData {
  GameData rebuild(void updates(GameDataBuilder b));
  GameDataBuilder toBuilder();
}
