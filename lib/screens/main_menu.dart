import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastermind/enums.dart';

class MainMenu extends StatefulWidget {
  final GameDifficulty currentDifficulty = GameDifficulty.easy;
  final PegColorScheme currentColorScheme = PegColorScheme.defaultScheme;

  final List<GameDifficulty> gameDifficulty = GameDifficulty.values.toList();
  final List<PegColorScheme> pegColorScheme = PegColorScheme.values.toList();


  VoidCallback changeDifficulty(List objectList, currentObject){
    int currentIndex = objectList.indexOf(currentObject);
    currentObject = (currentIndex == objectList.length)
        ? objectList[0]
        : objectList[currentIndex++];
  }

  Widget logoWidget() {
    return Text("Mastermind", style: TextStyle(fontSize: 65));
  }

  StatefulWidget changeDifficultyWidget() {
    return FlatButton(
      color: Colors.black,
      textColor: Colors.white,
      disabledColor: Colors.blue,
      disabledTextColor: Colors.black,
      splashColor: Colors.blue,
      padding: EdgeInsets.all(10),
      child: Text("Difficulty: ${currentDifficulty.toString().split('.').last}", style: TextStyle(fontSize: 20),),
        onPressed: () {changeDifficulty(gameDifficulty,currentDifficulty);},
    );
  }

  Widget changePegColorSchemeWidget() {
    return FlatButton(
      child: Text("Color Scheme: ${currentColorScheme.toString().split('.').last}"),
      onPressed: changeDifficulty(pegColorScheme,currentColorScheme),
    );
  }

  Widget startGameWidget() {
    return Text("Start");
  }


}
