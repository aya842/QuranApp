import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/String_manger.dart';
import 'package:islame_project_session_6/Core/assests_manger.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';

import 'tabs/Hadith/Headeath.dart';
import 'tabs/Quran_Tab/Quran.dart';
import 'tabs/Radio_Tab/Radio.dart';
import 'tabs/Sabha_Tap/Sabha.dart';
import 'tabs/Settings/Settings.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> Taps = [
    Quran(),
    Headeah(),
    Sabha(),
    RadioTap(),
    Settings(),

  ];

  int Selected_Tap = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(AssestsImages.mainBgLight),
      )),
      child: Scaffold(
        // backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.appTitle)),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: Selected_Tap,
            // to make the selected tap
            onTap: (index) {
              Selected_Tap = index;
              setState(() {});
            },
            type: BottomNavigationBarType.fixed,
            // know the difference between seftings

            items:  [
              BottomNavigationBarItem(
                  /////////
                  backgroundColor: colorsManger.gold_color,
                  icon: ImageIcon(AssetImage(AssestsImages.Quran_ICon)),
                  label:AppLocalizations.of(context)!.quranTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssestsImages.Hadeeth_Icon)),
                  label: AppLocalizations.of(context)!.hadithTab),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssestsImages.sebha_Icon)),
                  label:AppLocalizations.of(context)!.sebhaTab ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage(AssestsImages.radio_Icon)),
                  label:AppLocalizations.of(context)!.radioTab ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label:AppLocalizations.of(context)!.sebhaTab ),
            ]),
        body: Taps[Selected_Tap],
      ),
    );
  }
}
