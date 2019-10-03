import 'package:mastermind/enums.dart';

class GameMenuHandler {
  selectionProcessor(GameMenuItems selection) {
    switch (selection) {
      case GameMenuItems.changeColorScheme:
        changeColorScheme();
        break;
      case GameMenuItems.saveAndExit:
        saveAndExit();
        break;
      case GameMenuItems.exit:
        exitGame();
        break;
    }
  }

  changeColorScheme() {
    return null;
  }

  saveAndExit() {
    return null;
  }

  exitGame() {
    return null;
  }
}
