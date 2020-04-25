import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  void playsound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }
  Expanded buildwid({Color color,int number})
  {
   return  Expanded(
                child: FlatButton(
                    color: color,
                    onPressed: () {
                      playsound(number);
                    }),
              );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildwid(color: Colors.red,number: 1),
               buildwid(color: Colors.orange,number: 2),
               buildwid(color: Colors.yellow,number: 3),
               buildwid(color: Colors.green,number: 4),
               buildwid(color: Colors.teal,number: 5),
               buildwid(color: Colors.blue,number: 6),
               buildwid(color: Colors.purple,number: 7),

            ],
          ),
        ),
      ),
    );
  }
}
