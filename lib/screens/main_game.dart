import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mastermind/constants.dart';
import 'package:mastermind/enums.dart';
import 'package:mastermind/handlers/game_menu.dart';

class MainGame extends StatelessWidget {
  final int roundNum = 1;
  final int maxRounds = 13;


  /*TODO: Figure out Menu Button
  //Top Row
  Widget gameGoalWidget() {
    return Image.asset("test.jpg");
  }

  List<PopupMenuItem<GameMenuItems>> selections = <PopupMenuItem<GameMenuItems>>[
    popUpMenuItemCreator(
      GameMenuItems.changeColorScheme, gameMenuColorSchemeText),
    popUpMenuItemCreator(
        GameMenuItems.saveAndExit, gameMenuSaveExitText),
    popUpMenuItemCreator(GameMenuItems.exit, gameMenuExitText),];


  Widget gameMenuWidget() {
    return PopupMenuButton(
      onSelected: GameMenuHandler().selectionProcessor(selections.indexOf(element)),
        itemBuilder: (BuildContext context) => selections.map(selections);
  }

  static PopupMenuItem<GameMenuItems> popUpMenuItemCreator(
      GameMenuItems itemProperty, String itemText) {
    return PopupMenuItem(key: Key(itemProperty.toString()), value: itemProperty, child: Text(itemText));
  }

  Widget topRow() {
    return Row(children: <Widget>[gameGoalWidget(),gameMenuWidget()]);
  }
  //
//
//  //Gameplay Row
//  StatelessWidget guessCountMessageWidget() {
//    return new Text("Round: $roundNum");
//  }
//
//  Widget guessResultsWidget(int numFields, bool currentGuess) {
//    return null;
//  }
//
//  Widget guessRow() {
//    return Row(children: <Widget>[
//      guessCountMessageWidget(),
//      guessResultsWidget(1, true)
//    ]);
//  }
//
//  Widget guessSpace() {
//    return Row(children: <Widget>[guessRow()]);
//  }
//  //
//
//  //Bottom Row
//  Widget colorPoolWidget(intNumFields) {
//    return null;
//  }
//
//  StatelessWidget submitGuessWidget() {
//    return new FlatButton(child: Text("Guess"), onPressed: null);
//  }
//
//  Widget bottomRow(){ return Row(children: <Widget>[colorPoolWidget(1),submitGuessWidget()]);}
//  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(child: topRow()),
    );
  }
}
