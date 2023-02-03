import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:islami/sura_detalis/verse_widget.dart';
import 'package:provider/provider.dart';

class SuraDetalisScreen extends StatefulWidget {
  static const String routeName = 'suraDetalis';

  @override
  State<SuraDetalisScreen> createState() => _SuraDetalisScreenState();
}

class _SuraDetalisScreenState extends State<SuraDetalisScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var settingsProvider= Provider.of<SettingsProvider>(context);

    SuraDetalisScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetalisScreenArgs;
    readFile(args.index + 1);
    if (verses.isEmpty) readFile(args.index + 1);

    print(args.name);
    print(args.index);
    return Stack(children: [
      Image.asset(
        settingsProvider.getMainBackgroundImage(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Center(child: Text(args.name)),
        ),
        body: verses.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
                elevation: 15,
                child: ListView.separated(
                  itemBuilder: (buildContext, index) {
                    return VerseDetalis(verses[index], index + 1);
                  },
                  separatorBuilder: (context, int index) {
                    return Container(
                      child: Divider(
                        color: Colors.black,
                        height: 3,
                        thickness: 2,
                      ),
                    );
                  },
                  itemCount: verses.length,
                ),
              ),
      )
    ]);
  }

  void readFile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('assets/files/$fileIndex.txt');
    List<String> lines = fileContent.split('/n');
    setState(() {
      verses = lines;
    });
  }
}

class SuraDetalisScreenArgs {
  int index;
  String name;
  SuraDetalisScreenArgs({required this.index, required this.name});
}
