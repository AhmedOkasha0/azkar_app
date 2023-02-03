import 'package:flutter/material.dart';
import 'package:islami/model/ResponsRadio.dart';
import 'package:islami/model/utils.dart';
import 'package:islami/radio/radio_item.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                    itemCount: radios.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => RadioItem(radios[index]),
                  ),
                )
              ],
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error??''}');
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
