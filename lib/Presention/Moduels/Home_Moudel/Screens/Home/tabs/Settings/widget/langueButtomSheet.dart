import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildSelectedItemLangWidget(AppLocalizations.of(context)!.english,),
          SizedBox(
            height: 8,
          ),
          buildUnSelectedItemLangWidget(AppLocalizations.of(context)!.arabic),
        ],
      ),
    );
  }

  // Widget for selected language item
  Widget buildSelectedItemLangWidget(String selectedLang) {
    return Row(
      children: [
        Text(
          selectedLang,
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Spacer(),
        Icon(
          Icons.check,
          size: 28,
          color: Colors.white,
        ),
      ],
    );
  }

  // Widget for unselected language item
  Widget buildUnSelectedItemLangWidget(String unSelectedLang) {
    return Text(
      unSelectedLang,
      style: Theme.of(context)
          .textTheme
          .titleMedium

    );
  }
}

