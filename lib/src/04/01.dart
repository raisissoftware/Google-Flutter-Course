// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
//
// Future<void> main() async {
//   final Response response = await get('https://www.worldometers.info/geography/flags-of-the-world/');
//   final String data = response.body;
//   Map<String, String> countryFlagName;
//   final List<String> items = data.split('<a href="/img/flags');
//
//   for (final String item in items.skip(1)) {
//     final String countryName = item.substring(item.indexOf('padding-top:10px">'), item.indexOf('</div>'));
//     final String flagUrl = 'https://www.worldometers.info/img/flags/${item.split('"')[0]}';
//
//     countryFlagName.addEntries(countryName: flagUrl);
//
//     print(flagUrl);
//
//     runApp(const MyApp());
//   }
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   const HomePage({Key key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   // List<Color> board = <Color> [Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green,Colors.green];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text('Tic Tac Toe'),
//         ),
//         body: GridView.builder(
//         padding: const EdgeInsets.all(10.0),
//     itemCount: 9,
//     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//     itemBuilder: (BuildContext context, int index) {
//       Row()
//     }
//
//   }
//
//   ,
// }