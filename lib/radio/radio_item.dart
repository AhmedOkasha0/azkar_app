import 'package:flutter/material.dart';
import 'package:islami/model/ResponsRadio.dart';

class RadioItem extends StatelessWidget {
  Radios radios;
  RadioItem(this.radios);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(
          radios.name??''
        ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon:Icon(Icons.play_arrow_rounded),
              ),
              IconButton(onPressed: (){}, icon: Icon(Icons.pause)),
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow_rounded)),
            ],
          )
        ],
      ),

    );
  }
}
