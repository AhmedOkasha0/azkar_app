import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/hadeth_detalis/hadeth_detalis.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;



  HadethTitleWidget(this.hadeth);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetalis.routeName,arguments:hadeth

        );
      },
      child: Container(
        child: Center(
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.headline6,

          ),
        ),
      ),
    );
  }
}