import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
class color extends StatefulWidget {
  const color({Key? key}) : super(key: key);

  @override
  State<color> createState() => _colorState();
}

class _colorState extends State<color> {
  void playSound(int soundNumber)async{
    final player = AudioPlayer();
    await player.setSource(AssetSource('music/assets_note$soundNumber.wav'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Xylophone',style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          buildKey(Colors.red,1),
          buildKey(Colors.orange,2),
          buildKey(Colors.yellowAccent,3),
          buildKey(Colors.green,4),
          buildKey(Colors.blue,5),
          buildKey(Colors.indigo,6),
          buildKey(Colors.purple,7),
        ],
      )
    );
  }

  Expanded buildKey(Color keycolor,int snumber) {
    return Expanded(
            child: Container(
              color: keycolor,
              child: Center(
                  child: TextButton
                    (onPressed:(){
                      playSound(snumber);
                    },
                      child:Text('audio',
                        style: TextStyle(
                            color: Colors.black
                        ),
                      )
                  ),
              ),
            ),
    );
  }
}
