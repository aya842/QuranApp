import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islame_project_session_6/Core/route_manger.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/Home_Screens.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Quran_Details/Quran_Details.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Splashe/Splash.dart';
import 'package:islame_project_session_6/config/Theme/My_Theme.dart';

import '../Presention/Moduels/Home_Moudel/Screens/Hadith_Details/Hadith_Details.dart';

class MyApp extends StatelessWidget {
 const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: My_Theme.Light_theme,

      /// TODO DarkTheme
      routes: {
        RouteManger.Home_route: (context) => HomeScreen(),
        RouteManger.Splashe_route: (context) => Splashe(),
        RouteManger.Quran_DetailsScreen_route: (context) => QuranDetailsScreen(),
        RouteManger.Hadith_DetailsScreen_route: (context) => HadithDetailsScreen()
      },
      initialRoute: RouteManger.Splashe_route,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
    );
  }
}


