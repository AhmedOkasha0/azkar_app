import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class HadethDetalis extends StatelessWidget {
  static const String routeName = 'hadethDetalis';

  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings?.arguments as Hadeth;
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Stack(children: [
      Image.asset(
        settingsProvider.getMainBackgroundImage(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Center(child: Text(args.title)),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Card(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
            elevation: 15,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  args.content,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
