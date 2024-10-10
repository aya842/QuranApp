import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';
import 'package:islame_project_session_6/Core/route_manger.dart';
import 'package:islame_project_session_6/Presention/Moduels/Home_Moudel/Screens/Home/tabs/Quran_Tab/Quran.dart';

class SuraNameWidght extends StatelessWidget {
  SuraNameWidght({required this.suraItem});

  SuraItem suraItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RouteManger.Quran_DetailsScreen_route,
            arguments: suraItem);
      },
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
                child: Text(
              suraItem.Sura_Name,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
            Container(
              width: 3,
              color: colorsManger.gold_color,
            ),
            Expanded(
                child: Text(
              suraItem.Vers_Number,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            )),
          ],
        ),
      ),
    );
  }
}
