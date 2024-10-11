import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Hadith/Headeath.dart';

class TitleWidget extends StatefulWidget {
  TitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
      child: Text(widget.hadith.title,
          style: Theme.of(context).textTheme.titleMedium),
    );
  }
}
