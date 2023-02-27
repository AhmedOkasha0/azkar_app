import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami/model/ResponsRadio.dart';
import 'package:islami/model/utils.dart';
import 'package:islami/radio/radio_item.dart';

class RadioTab extends StatefulWidget {
  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  var audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return FutureBuilder<ResponsRadio>(
        future: ApiManger.getData(),
        builder: (context, snapshot) {
          var radios = snapshot.data?.radios ?? [];
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Image.asset('assets/images/radio_image.png')),
                Expanded(
                  child: ListView.builder(
                    physics: PageScrollPhysics(),
                    itemCount: radios.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Center(
                      child: SizedBox(
                        width: mediaQuery.width,
                        child: RadioItem(
                          audioPlayer: audioPlayer,
                          radios: radios[index],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error ?? ''}');
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
