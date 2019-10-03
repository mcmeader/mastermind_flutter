import 'package:mastermind/enums.dart';

const gameMenuColorSchemeText = "Change Color Scheme";
const gameMenuSaveExitText = "Save and Exit Game";
const gameMenuExitText = "Exit Game";

class GamePegs {
  getGamePegs(GameDifficulty difficulty) {
    switch (difficulty) {
      case GameDifficulty.easy:
        return easy();
        break;
      case GameDifficulty.medium:
        return medium();
        break;
      case GameDifficulty.hard:
        return hard();
        break;
      case GameDifficulty.crazy:
        return crazy();
        break;
      case GameDifficulty.insane:
        return insane();
        break;
    }
  }

  static List<PossiblePegs> easy() => [
        PossiblePegs.red,
        PossiblePegs.blue,
        PossiblePegs.white,
        PossiblePegs.black,
      ];

  static List<PossiblePegs> medium() => [
        PossiblePegs.red,
        PossiblePegs.yellow,
        PossiblePegs.blue,
        PossiblePegs.green,
        PossiblePegs.white,
        PossiblePegs.black,
      ];

  static List<PossiblePegs> hard() => [
        PossiblePegs.red,
        PossiblePegs.yellow,
        PossiblePegs.blue,
        PossiblePegs.green,
        PossiblePegs.orange,
        PossiblePegs.purple,
        PossiblePegs.white,
        PossiblePegs.black,
      ];

  static List<PossiblePegs> crazy() => [
        PossiblePegs.red,
        PossiblePegs.orange,
        PossiblePegs.yellow,
        PossiblePegs.blue,
        PossiblePegs.green,
        PossiblePegs.purple,
        PossiblePegs.pink,
        PossiblePegs.brown,
        PossiblePegs.white,
        PossiblePegs.black,
      ];

  static List<PossiblePegs> insane() => [
        PossiblePegs.red,
        PossiblePegs.orange,
        PossiblePegs.yellow,
        PossiblePegs.blue,
        PossiblePegs.green,
        PossiblePegs.purple,
        PossiblePegs.pink,
        PossiblePegs.brown,
        PossiblePegs.grey,
        PossiblePegs.white,
        PossiblePegs.black,
        PossiblePegs.empty,
      ];
}
