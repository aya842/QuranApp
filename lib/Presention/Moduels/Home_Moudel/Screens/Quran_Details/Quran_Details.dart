import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Quran_Tab/Quran.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Quran_Details/Widget/Verse_Widget.dart';

class QuranDetailsScreen extends StatefulWidget {
  QuranDetailsScreen({super.key});

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  List<String> Verses = [];

  @override
  Widget build(BuildContext context) {
    SuraItem suraIfo = ModalRoute.of(context)?.settings.arguments as SuraItem;
    if (Verses.isEmpty)
      readQuranFile(suraIfo.index + 1); //make block to read files by not sync
    return Stack(
      children: [
        Image.asset(
          'assets/images/light_theme_bg@2x.png',
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              suraIfo.Sura_Name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemBuilder: (context, index) =>
                      VerseWidget(verse: Verses[index]),
                  itemCount: Verses.length,
                ),
        ),
      ],
    );
  }

  void readQuranFile(int index) async {
    String fileContact =
        await rootBundle.loadString('assets/files/${index}.txt'); //block
    List<String> SuraLinesList = fileContact.trim().split('/n');
    SuraLinesList.forEach(
      (element) {
        print(element);
      },
    );

    setState(() {
      Verses = SuraLinesList;
    });
  }

  void readQuranFile2(int index) async {
    rootBundle.loadString('assets/files/${index}.txt').then((FileContent) {
      setState(
        () {
          Verses = FileContent.trim().split('/n');
        },
      );
    });
  }
}
