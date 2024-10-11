import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/route_manger.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Hadith/Headeath.dart';

class TitleWidget extends StatelessWidget {
  TitleWidget({super.key, required this.hadith});

  Hadith hadith;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, RouteManger.Hadith_DetailsScreen_route,
          arguments: hadith,
        );
      },
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
        child: Text(hadith.title,
            style: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
