import 'package:assets_audio_player/assets_audio_player.dart';
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
  // final List<Audio> audios = <Audio>[
  //   Audio.network('assets/audio/Salut.mp3'),
  //   Audio.network('assets/audio/hallo.mp3'),
  //   Audio.network('assets/audio/Numele_meu_este.mp3'),
  //   Audio.network('assets/audio/Ich_heisse.mp3'),
  //   Audio.network('assets/audio/Ce_mai_faci.mp3'),
  //   Audio.network('assets/audio/Wie_bist_du.mp3'),
  //   Audio.network('assets/audio/sunt_bine_multumesc.mp3'),
  //   Audio.network('assets/audio/ich_bin_gut_danke.mp3'),
  //   Audio.network('assets/audio/si_tu.mp3'),
  //   Audio.network('assets/audio/Und_du.mp3'),
  //
  //
  // ];

  // AssetsAudioPlayer get _assetsAudioPlayer => AssetsAudioPlayer.withId("music");
  // final List<StreamSubscription> _subscriptions = [];
  // @override
  // void dispose() {
  //   _assetsAudioPlayer.dispose();
  //   print("dispose");
  //   super.dispose();
  // }
  //
  // Audio find(List<Audio> source, String fromPath) {
  //   return source.firstWhere((element) => element.path == fromPath);
  // }
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _assetsAudioPlayer.open(
  //       Playlist(audios: audios)
  //   );
  //   _subscriptions.add(_assetsAudioPlayer.playlistAudioFinished.listen((data) {
  //     print("playlistAudioFinished : $data");
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    final List<Color> _colors = <Color>[Colors.blue, Colors.lightBlueAccent];
    final List<double> _stops = <double>[0.0, 0.6];
    final List<String> _spellList = <String>[
      'Salut',
      'Hallo',
      'Numele meu este',
      'Ich heisse',
      'Ce mai faci?',
      'Wie bist du?',
      'sunt bine, mulțumesc',
      'Ich bin gut, danke',
      'Si tu?',
      'Und du?'
    ];
    final List<String> _spellListAudio = <String>[
      'assets/audio/Salut.mp3',
      'assets/audio/hallo.mp3',
      'assets/audio/Numele_meu_este.mp3',
      'assets/audio/Ich_heisse.mp3',
      'assets/audio/Ce_mai_faci.mp3',
      'assets/audio/Wie_bist_du.mp3',
      'assets/audio/sunt_bine_multumesc.mp3',
      'assets/audio/ich_bin_gut_danke.mp3',
      'assets/audio/si_tu.mp3',
      'assets/audio/Und_du.mp3'
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text('Basic Phrases'),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: _spellList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30),
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    setState(() {
                      // _assetsAudioPlayer.stop();
                      // _assetsAudioPlayer.playlistPlayAtIndex(index);
                      AssetsAudioPlayer.playAndForget(Audio(_spellListAudio[index]));
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.0),
                      gradient: LinearGradient(
                        colors: _colors,
                        stops: _stops,
                      ),
                    ),
                  ),
                ),
                Text(
                  '-> ' + _spellList[index],
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            );
          },
        ));
  }
}
