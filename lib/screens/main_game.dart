import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainGame extends StatelessWidget {
  int roundNum;
  int maxRounds;

  Widget gameGoalWidget(){return new Image.asset('cover_placeholder.png');}

  StatelessWidget guessCountMessageWidget(){return new Text("Round: $roundNum");}

  Widget guessResultsWidget(int numFields){return null;}

  Widget currentGuessWidget(int numFields){return null;}

  Widget colorPoolWidget(intNumFields){return null;}

  StatelessWidget submitGuessWidget(){return new FlatButton(child: Text("Guess"), onPressed: null);}

  @override
  Widget build(BuildContext context) {
    return new MainGame();
  }

}











//
//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
//      home: MyHomePage(title: 'Flutter Demo Home Page'),
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//  int _counter = 0;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text(widget.title),

//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Text(
//              'You have pushed the button this many times:',
//            ),
//            Text(
//              '$_counter',
//              style: Theme.of(context).textTheme.display1,
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//}
