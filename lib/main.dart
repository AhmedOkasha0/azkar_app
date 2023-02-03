import 'package:flutter/material.dart';
import 'package:islami/hadeth_detalis/hadeth_detalis.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/providers/setting_provider.dart';
import 'package:islami/sura_detalis/sura_detalis_screen.dart';
import 'package:islami/theme_screen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(create: (buildContext)=>SettingsProvider(),
      child: MyApp()));




}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var settingsProvider= Provider.of<SettingsProvider>(context);
    return MaterialApp(
        theme: ThemeScreen.LightTheme,
        darkTheme: ThemeScreen.darkTheme,
        themeMode: settingsProvider.currentTheme,


      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: { HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetalisScreen.routeName:(context)=> SuraDetalisScreen(),
        HadethDetalis.routeName:(context)=>HadethDetalis(),
      }

    );
  }
}
