import 'package:mastermind/enums.dart';

class DifficultyHandler{
  GameDifficulty gameDifficulty;

  DifficultyHandler(this.gameDifficulty):assert(gameDifficulty != null);

  int getNumOfFields() {
    switch (gameDifficulty) {
      case GameDifficulty.easy:
        return 3;
        break;
      case GameDifficulty.medium:
        return 4;
        break;
      case GameDifficulty.hard:
        return 5;
        break;
      case GameDifficulty.crazy:
        return 6;
        break;
      case GameDifficulty.insane:
        return 7;
        break;
      default:
        return null;
    }
  }

}