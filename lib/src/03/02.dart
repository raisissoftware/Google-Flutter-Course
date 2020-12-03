import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Color> board = <Color> [Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green];
  List<int> board = <int>[-1, -1, -1, -1, -1, -1, -1, -1, -1];
  String message = '';
  final bool item = true;
  bool gameOver = false;
  int turn = -1;

  void _resetGame() {
    setState(() {
      board = <int>[-1, -1, -1, -1, -1, -1, -1, -1, -1];
      turn = -1;
    });
  }

  bool _checkWinner() {
    if (turn != -1) {
      int i;
      for (i = 0; i <= 2; i++) {
        if (board[i] != -1 && board[i] == board[i + 2] && board[i + 2] == board[i + 6]) {
          return true;
        } else if (board[i] != -1 && board[0] == board[4] && board[4] == board[8]) {
          return true;
        } else if (board[i] != -1 && board[2] == board[4] && board[4] == board[6]) {
          return true;
        } else if (board[i] != -1 && board[i + 1] == board[i + 2] && board[i + 2] == board[i + 3]) {
          return true;
        }
      }
      return false;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tic Tac Toe'),
      ),
      body: Column(
        children: <Widget>[
          Text('You are playing as $turn - Last winner $message'),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              itemCount: 9,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      if (!_checkWinner()) {
                        if (turn == -1) {
                          turn = 1;
                          board[index] = 1;
                        } else if (turn == 2) {
                          board[index] = 2;
                          turn = 1;
                        } else {
                          board[index] = 1;
                          turn = 2;
                        }
                      } else {
                        message = 'Winner was $turn';
                        _resetGame();
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      color: board[index] == -1
                          ? Colors.white
                          : board[index] == 1
                              ? Colors.red
                              : board[index] == 2
                                  ? Colors.green
                                  : Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          RaisedButton(
              child: const Text('reset'),
              onPressed: () {
                _resetGame();
              })
        ],
      ),
    );
  }
}
