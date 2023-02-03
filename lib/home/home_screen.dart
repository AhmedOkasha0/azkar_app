import 'package:flutter/material.dart';
import 'package:islami/hadeth/hadeth_tab.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:islami/quran/quran_tab.dart';
import 'package:islami/radio/radio_item.dart';
import 'package:islami/radio/radio_tab.dart';
import 'package:islami/settings/settings.dart';
import 'package:islami/tasbeh/tasbeh_tab.dart';
import 'package:islami/theme_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var settingsProvider = Provider.of<SettingsProvider>(context);

    return Stack(
      children: [
        Image.asset(
          settingsProvider.getMainBackgroundImage(),
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Islami'),
            ),
          ),
          bottomNavigationBar: Theme(
            data:
                ThemeScreen.LightTheme.copyWith(canvasColor: Color(0xffB7935F)),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});

                print(index);
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_radio.png'),
                      size: 48,
                    ),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_sebha.png'),
                      size: 48,
                    ),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_hadeth.png'),
                      size: 48,
                    ),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage('assets/images/ic_quran.png'),
                      size: 48,
                    ),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.settings,
                      size: 38,
                    ),
                    label: 'Settings'),
              ],
            ),
          ),
          body: Tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> Tabs = [RadioTab(), TasbehTab(), HadethTab(), QuranTab(),Settings()];
}
