import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Razvan - 02 - 03 ',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String error = '';
  String message = '';
  String writtenNumber = '';
  int insertedNumber = 0;
  Random rnd = Random();
  int guessNumber = 0;
  bool reset = true;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(
              alignment: AlignmentDirectional.center,
              child: Text(
                'Please input a number to see if it is square or triangular.',
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Check bellow',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.00,
              ),
            ),
          ),
          TextField(
            keyboardType: const TextInputType.numberWithOptions(signed: true, decimal: true),
            decoration: InputDecoration(
              hintText: 'Insert a number',
              errorText: error,
            ),
            onChanged: (String value) {
              setState(() {
                writtenNumber = value;
              });
            },
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            foregroundColor: Colors.black,
            onPressed: () {
              if (writtenNumber.isEmpty) {
                setState(() {
                  error = 'Please insert a number';
                });
              } else if (int.tryParse(writtenNumber) == null) {
                error = 'It must be a number!';
              } else {
                setState(() {
                  error = null;
                  insertedNumber = int.parse(writtenNumber);
                  message = checkNumber(insertedNumber);
                  _showDialogForGuessed(message);
                });
              }

              // Respond to button press
            },
            child: const Icon(Icons.check),
          )
        ],
      ),
    );
  }

  Future<void> _showDialogForGuessed(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return SimpleDialog(title: Text('Number ' + insertedNumber.toString()), children: <Widget>[
          Text('Number' + insertedNumber.toString() + ' ' + message),
        ]);
      },
    );
  }

  bool isSquare(int number) {
    return sqrt(insertedNumber) % 1 == 0;
  }

  bool isTriangular(int x) {
    if (x < 0) {
      return false;
    }
    return ((sqrt(8 * x + 1) - 1) / 2) % 1 == 0;
  }

  String checkNumber(int insertedNumber) {
    int answer = 3;
    final Map<int, String> r = <int, String>{
      1: 'is SQUARE',
      2: 'is both SQUARE and TRIANGULAR.',
      3: 'is neither TRIANGULAR or SQUARE',
      4: 'is TRIANGULAR',
    };

    if (isSquare(insertedNumber)) {
      answer = 1;
    }
    if (isTriangular(insertedNumber)) {
      if (answer == 1)
        answer = 2;
      else
        answer = 4;
    }
    return r[answer];
  }
}
