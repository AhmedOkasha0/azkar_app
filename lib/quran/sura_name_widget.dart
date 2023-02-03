import 'package:flutter/material.dart';
import 'package:islami/sura_detalis/sura_detalis_screen.dart';

class SuraNameWidget extends StatelessWidget {
  String title;
  int index;
  SuraNameWidget(this.title,this.index);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetalisScreen.routeName,
          arguments: SuraDetalisScreenArgs(index:index, name: title),
        );
      },
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),

          ),
        ),
      ),
    );
  }
}
