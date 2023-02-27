import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/model/ResponsRadio.dart';

class RadioItem extends StatefulWidget {
  Radios radios;
  AudioPlayer audioPlayer;
  RadioItem({required this.radios, required this.audioPlayer});

  @override
  State<RadioItem> createState() => _RadioItemState();
}

class _RadioItemState extends State<RadioItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.radios.name ?? '',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: play,
              icon: Icon(Icons.play_arrow_rounded),
            ),
            IconButton(onPressed: pause, icon: Icon(Icons.pause)),
          ],
        )
      ],
    );
  }

  void play() async {
    if (widget.radios.url != null) {
      return widget.audioPlayer.play(UrlSource(widget.radios.url!));
    }
  }

  void pause() async {
    await widget.audioPlayer.pause();
  }
}
