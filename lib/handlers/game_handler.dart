import 'dart:math';

import 'package:mastermind/constants.dart';
import 'package:mastermind/enums.dart';
import 'package:mastermind/handlers/difficulty_to_int.dart';

class StartGame {
  GameDifficulty _difficulty;
  List<PossiblePegs> _codeToGuess;
  int maxRoundNumber;
  List<List<PossiblePegs>> _guesses;
  List<List<CheckerCodes>> _checkedGuesses;

  StartGame(this._difficulty, this.maxRoundNumber) : super();

  List<PossiblePegs> makeCode() {
    final currentTime = DateTime.now().millisecond;
    final List<PossiblePegs> allowedPegs = GamePegs().getGamePegs(_difficulty);
    final numPegs = DifficultyHandler(_difficulty).getNumOfFields();
    final randomizer = Random(Random(currentTime).nextInt(currentTime));

    for (int i = 0; i < numPegs; i++) {
      _codeToGuess.add(allowedPegs[randomizer.nextInt(allowedPegs.length + 1)]);
    }

    _codeToGuess.shuffle(randomizer);

    return _codeToGuess;
  }

  checkGuess(List<PossiblePegs> guess, int currentRound) {
    List<CheckerCodes> checkedGuesses;
    List<PossiblePegs> incorrectPlacements = guess;
    List<PossiblePegs> unmatchedGuessCode = _codeToGuess;

    for (int i = 0; i < guess.length; i++) {
      if (guess[i] == _codeToGuess[i]) {
        checkedGuesses.add(CheckerCodes.correctSpot);
        incorrectPlacements.removeAt(i);
        unmatchedGuessCode.removeAt(i);
      }
    }

    for (int i = 0; i < incorrectPlacements.length; i++) {
      if (unmatchedGuessCode.contains(incorrectPlacements[i])) {
        checkedGuesses.add(CheckerCodes.correctColor);
        unmatchedGuessCode.removeAt(i);
      }
    }

    saveGuess(guess, checkedGuesses);

    if (_checkVictory(checkedGuesses)) {
      return true;
    } else {
      return (_checkDefeat(currentRound)) ? false : checkedGuesses;
    }
  }

  //TODO: Save list to memory as well?
  void saveGuess(List<PossiblePegs> guess, List<CheckerCodes> checkedGuesses) {
    _guesses.add(guess);
    _checkedGuesses.add(checkedGuesses);
  }

  bool _checkVictory(List<CheckerCodes> checkedGuesses) =>
      (checkedGuesses.length == _codeToGuess.length);

  bool _checkDefeat(int currentRound) => (currentRound > maxRoundNumber);

  get guesses => _guesses;

  get checkedGuesses => _checkedGuesses;
}
