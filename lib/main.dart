import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(xylophoneApp());
}

class xylophoneApp extends StatefulWidget {
  const xylophoneApp({super.key});

  @override
  State<xylophoneApp> createState() => _xylophoneAppState();
}

class _xylophoneAppState extends State<xylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundNumber.wav'),
    );
    print('sound $soundNumber');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(1);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(2);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.orange),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(3);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(4);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(5);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(6);
                },
                style:
                    TextButton.styleFrom(backgroundColor: Colors.blue.shade900),
                child: Text(''),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playSound(7);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
