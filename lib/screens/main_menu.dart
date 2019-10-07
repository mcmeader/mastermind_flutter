import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastermind/constants.dart';
import 'package:mastermind/enums.dart';
import 'package:mastermind/screens/main_game.dart';

class MainMenu extends StatelessWidget {
  final List<GameDifficulty> gameDifficulty = GameDifficulty.values.toList();
  final List<PegColorScheme> pegColorScheme = PegColorScheme.values.toList();

  Widget logoWidget() {
    return Text(
      "Mastermind",
      style: TextStyle(fontSize: 40),
    );
  }

  StatefulBuilder changeGameDifficultyButton() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            disabledColor: Colors.blue,
            disabledTextColor: Colors.black,
            splashColor: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Text(
                "Difficulty: ${currentDifficulty.toString().split('.').last}"),
            onPressed: () {
              setState(() {
                int currentIndex = gameDifficulty.indexOf(currentDifficulty);
                currentIndex = (currentIndex == gameDifficulty.length - 1)
                    ? 0
                    : currentIndex + 1;
                currentDifficulty = gameDifficulty[currentIndex];
              });
            });
      },
    );
  }

  StatefulBuilder changePegColorButton() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return FlatButton(
            color: Colors.blueAccent,
            textColor: Colors.white,
            disabledColor: Colors.blue,
            disabledTextColor: Colors.black,
            splashColor: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Text(
                "Color Scheme: ${currentColorScheme.toString().split('.').last}"),
            onPressed: () {
              setState(() {
                int currentIndex = pegColorScheme.indexOf(currentColorScheme);
                currentIndex = (currentIndex == pegColorScheme.length - 1)
                    ? 0
                    : currentIndex + 1;
                currentColorScheme = pegColorScheme[currentIndex];
              });
            });
      },
    );
  }

  Widget startGameWidget(BuildContext context) {
    return FlatButton(
        color: Colors.black,
        textColor: Colors.white,
        disabledColor: Colors.blue,
        disabledTextColor: Colors.black,
        splashColor: Colors.red,
        padding: EdgeInsets.all(5),
        child: Text("Start"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MainGame()));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(),
            logoWidget(),
            changeGameDifficultyButton(),
            changePegColorButton(),
            startGameWidget(context),
            Spacer()
          ],
        ),
      ),
    );
  }
}
