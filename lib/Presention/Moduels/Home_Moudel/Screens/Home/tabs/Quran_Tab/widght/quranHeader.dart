import 'package:flutter/material.dart';
import 'package:islame_project_session_6/Core/String_manger.dart';
import 'package:islame_project_session_6/Core/colors_manager.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class QuranHeaderWidght extends StatelessWidget {
  const QuranHeaderWidght({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal:
                  BorderSide(color: colorsManger.gold_color, width: 5))),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              AppLocalizations.of(context)!.chapterName,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            )),
            Container(
              color: Theme.of(context).dividerColor,
              width: 4,
            ),
            Expanded(
                child: Text(
                  AppLocalizations.of(context)!.versesNumber,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ))
          ],
        ),
      ),
    );
  }
}
