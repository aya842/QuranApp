import "package:flutter/material.dart";
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {

    return Container(

      padding: EdgeInsets.all(20),
       
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

              buildSelectedItemThemeWidget(
                  AppLocalizations.of(context)!.light


                ),
          SizedBox(
            height: 8,

          ),

               buildUnSelectedItemThemeWidget(AppLocalizations.of(context)!.dark
                  ),
        ],
      ),
    );
  }

  Widget buildSelectedItemThemeWidget(String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedTheme, style: Theme.of(context).textTheme.displayMedium),
       // Spacer(),
        Icon(
          Icons.check,
          size: 28,
          color: Colors.white,
        )
      ],
    );
  }

  Widget buildUnSelectedItemThemeWidget(String unSelectedTheme) {
    return Row(
      children: [
        Text(unSelectedTheme,
            style: Theme.of(context)
                .textTheme
                .titleMedium)

      ],
    );
  }
}