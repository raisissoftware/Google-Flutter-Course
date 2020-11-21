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
      title: 'Razvan - 01 ',
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

class _HomePageState extends State<HomePage>{

  String exchangeValue ='';
  String error = '';
  String pressedExchangeValue ='';
  double exchangeRate = 4.5;
  double exchangedValueToRON = 0.0;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Align(
              alignment: AlignmentDirectional.center,
                child: Text(
                  'Currency App',
                  style: TextStyle(
                  color: Colors.red,
                  ),
                ),
              ),
            ),
            Image.network(
            'https://d1e00ek4ebabms.cloudfront.net/production/e4885aba-70c2-436e-a5d2-5c251ad1c2da.jpg',
            height:200.0,
            ),
            TextField(
                keyboardType: const TextInputType.numberWithOptions(signed: true,decimal: true),
                decoration: InputDecoration(
                hintText: 'Insert a number',
                errorText: error,
              ),
              onChanged: (String value) {
                setState(() {
                  exchangeValue = value;
                });
              },
            ),

            RaisedButton(
              child: const Text('Exchange RON to EUR'),
              onPressed: () {
                if(exchangeValue.isEmpty) {
                  setState(() {
                    error = 'Please insert a number to do the exchange';
                  });
                } else if(double.tryParse(exchangeValue) == null) {
                    error = 'It must be a number!';
                  } else {
                  setState(() {
                    error = null;
                    pressedExchangeValue = exchangeValue;
                    exchangedValueToRON = double.parse(exchangeValue)*exchangeRate;
                    pressed = true;
                  });
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  pressed ? pressedExchangeValue + ' EUR is ' + exchangedValueToRON.toString() + ' RON' : '',
                  style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20.00,
                  ),
              ),
            ),

          ],
      ),

    );
  }
}