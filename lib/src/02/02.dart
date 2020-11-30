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
      title: 'Razvan - 02 - 01 ',
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
                "I'm thinking of a number between 1 and 100.",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              pressed
                  ? reset
                      ? newGuess()
                          ? 'We have a new number to be guessed'
                          : ' '
                      : insertedNumber == guessNumber
                          ? guessed()
                          : insertedNumber < guessNumber
                              ? 'You tried ' +
                                  insertedNumber.toString() +
                                  ' Try higher'
                              : 'You tried ' +
                                  insertedNumber.toString() +
                                  ' Try lower'
                  : '',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20.00,
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.arrow_drop_down_circle),
                  title: Text('Try a number! -> ' + guessNumber.toString()),
                  subtitle: Text(
                    'Insert the number you guessed bellow',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    keyboardType: const TextInputType.numberWithOptions(
                        signed: true, decimal: true),
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
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: reset ? const Text('Reset') : const Text('Guess'),
                      onPressed: () {
                        if (reset) {
                          newGuess();
                        } else {
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
                              pressed = true;
                            });
                          }
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }

  bool newGuess() {
    guessNumber = rnd.nextInt(100) + 1;
    reset = false;

    return true;
  }

  Future<void> _showDialogForGuessed() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('You guessed right'),
            content: Text('It was ' + guessNumber.toString()),
            actions: <Widget>[
              TextButton(
                child: const Text('Try again'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  String guessed() {
    _showDialogForGuessed();
    return ' You have guessed';
  }
}
