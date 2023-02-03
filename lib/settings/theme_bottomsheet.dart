import 'package:flutter/material.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var settingProvider=Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: (){
              settingProvider.changeTheme(ThemeMode.light);

            },
            child: getSelectedWidget('light',),

          ),
          SizedBox(
            height: 5,
          ),
          InkWell(onTap: (){
            settingProvider.changeTheme(ThemeMode.dark);
          },
              child: getUnSelectedWidget('dark',)),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Icon(
          Icons.check,
          color: Colors.yellow,
        ),
      ],
    );
  }

  Widget getUnSelectedWidget(String title) {
    return Text(
      title,
      textAlign: TextAlign.left,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}
