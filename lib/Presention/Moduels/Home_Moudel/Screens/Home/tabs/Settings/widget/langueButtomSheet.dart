import 'package:flutter/material.dart';

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
          buildUnSelectedItemLangWidget('English'),
          SizedBox(
            height: 8,
          ),
          buildUnSelectedItemLangWidget('العربيه'),
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
          .displayMedium
          ?.copyWith(color: Theme.of(context).colorScheme.secondary),
    );
  }
}

