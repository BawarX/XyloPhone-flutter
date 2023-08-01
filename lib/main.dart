import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MusicPlayer(),
    );
  }
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            print("hello");
            final audio2 = AudioPlayer();
            audio2.play(
              AssetSource('assets/mamle.mp3'),
            );
          },
          child: const Text('sivar gay'),
        ),
      ),
    ));
  }
}
