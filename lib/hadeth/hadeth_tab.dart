import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadeth/hadeth.dart';
import 'package:islami/hadeth/hadeth.title.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) hadeathContent();

    return Container(
      child: Column(
        children: [
          Image.asset('assets/images/hadeth_image.png'),
          Expanded(
            child: ListView.separated(
              itemBuilder: (buildContext, index) {
                return HadethTitleWidget(allHadethList[index]);
              },
              itemCount: allHadethList.length,
              separatorBuilder: (buildContext, index) {
                return Divider(
                  thickness: 1,
                  height: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void hadeathContent() async {
    List<Hadeth> hadethList = [];
    String content = await rootBundle.loadString('assets/files/ahadeth .txt');
    List<String> allhadethContent = content.split('#');
    for (int i = 0; i < allhadethContent.length; i++) {
      String singleHadeth = allhadethContent[i].trim();
      int indexOfFirstLine = singleHadeth.indexOf('\n');
      String title = singleHadeth.substring(0, indexOfFirstLine);
      String content = singleHadeth.substring(indexOfFirstLine + 1);
      Hadeth h = Hadeth(title, content);
      hadethList.add(h);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
